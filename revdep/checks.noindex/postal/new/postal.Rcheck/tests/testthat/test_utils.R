testthat::context("Test utility functions")

testthat::test_that("zips_zones_sample", {
  testthat::expect_is(
    zips_zones_sample,
    "data.frame"
  )

  testthat::expect_equal(
    nrow(zips_zones_sample),
    1000000
  )
})

testthat::test_that("Safely getting data works", {
  good_url <- glue::glue("{three_digit_base_url}{'007'}")

  testthat::expect_length(get_data(good_url), 7)

  testthat::expect_null(try_get_data("foo") %>%
    purrr::pluck("result"))

  testthat::expect_null(
    try_get_data(good_url) %>%
      purrr::pluck("error")
  )

  testthat::expect_null(try_get_data(
    glue::glue("{five_digit_base_url}?origin={'06840'}&destination={'68007'}")
  ) %>%
    purrr::pluck("error"))

  testthat::expect_error(get_zones_three_digit("foo"))

  testthat::expect_error(get_zones_five_digit("bar"))

  testthat::expect_message(get_zones_five_digit("90210", "23456",
    verbose = TRUE
  ))
})


three_digit_base_url <- "foo"
testthat::expect_error(
  get_zones_three_digit("bar")
)

three_digit_base_url <-
  "https://postcalc.usps.com/DomesticZoneChart/GetZoneChart?zipCode3Digit="

testthat::test_that("Zips are prepped correctly", {

  # Can't let user supply 4 digits as we don't know whether they mean a 5 digit zip or a 3 digit one
  testthat::expect_error(prep_zip("1234"))
  testthat::expect_error(fetch_zones_three_digit("1234"))

  testthat::expect_warning(testthat::expect_equal(prep_zip("123456"), "12345"))

  testthat::expect_equal(testthat::expect_message(prepend_zeros("4",
    verbose = TRUE
  )), "004")
  testthat::expect_equal(prepend_zeros("40"), "040")
  testthat::expect_message(testthat::expect_equal(
    prepend_zeros("40", verbose = TRUE), "040"
  ))
  testthat::expect_equal(prepend_zeros("404"), "404")
  testthat::expect_equal(prepend_zeros("4040"), "04040")
})


testthat::test_that("Trying n times", {
  testthat::expect_null(
    try_n_times("foo") %>%
      purrr::pluck("result")
  )

  testthat::expect_null(
    try_n_times(stringr::str_c(three_digit_base_url, "123", collapse = "")) %>%
      purrr::pluck("error")
  )

  testthat::expect_equal(
    "no_success",
    try_n_times_zone("foo", "123", "456") %>%
      purrr::pluck("zone")
  )

  testthat::expect_equal(
    "no_success",
    try_n_times_zone("foo", "12345", "45678") %>%
      purrr::pluck("zone")
  )
})


testthat::test_that("Assignment of validity", {
  testthat::expect_message(
    fetch_zones_three_digit("1"),
    "Origin zip 001 is not in use."
  )

  testthat::expect_equal(
    "valid",
    get_zones_three_digit("112") %>%
      dplyr::pull(validity) %>%
      dplyr::first()
  )
})


testthat::test_that("Replacement of nulls", {
  testthat::expect_equal(NA_character_, replace_x(NULL))

  has_missing <- list("foo", vector(), "baz")
  replaced <- has_missing %>% purrr::map(replace_x, "bar")
  testthat::expect_equal(replaced[[2]], "bar")
})


testthat::test_that("Interpolation of zips in between ranges", {
  testthat::expect_equal(
    2422,
    get_zones_three_digit("123") %>%
      interpolate_zips() %>%
      nrow()
  )

  testthat::expect_equal(
    "invalid",
    get_zones_three_digit("001") %>%
      interpolate_zips() %>%
      dplyr::pull("validity")
  )

  unsuccessful <-
    tibble::tribble(
      ~"origin_zip", ~"dest_zip", ~"zone", ~"validity",
      "123", NULL, "no_success", "no_success"
    )

  testthat::expect_equal(
    "no_success",

    unsuccessful %>%
      interpolate_zips() %>%
      purrr::pluck("dest_zip")
  )
})


testthat::test_that("Assorted other utils", {
  testthat::expect_equal(cap_word("foo"), "Foo")
})


testthat::test_that("Scrubbing works", {
  some_mail <-
    fetch_mail(
      origin_zip = "60647",
      destination_zip = "11238",
      pounds = 15, shape = "rectangular"
    )

  # Grab a date with a time in it
  sample_day <-
    some_mail %>%
    dplyr::select(delivery_day) %>%
    dplyr::filter(stringr::str_detect(delivery_day, "by")) %>%
    dplyr::slice(1) %>%
    dplyr::pull(delivery_day)

  sample_date <-
    extract_dates(sample_day)

  testthat::expect_is(sample_date, "Date")

  sample_time <-
    extract_times(sample_day)

  reconstituted <-
    glue::glue("{sample_date} {sample_time}:00 UTC") %>%
    as.character() %>%
    lubridate::ymd_hms()

  testthat::expect_is(reconstituted, "POSIXct")

  testthat::expect_equal(
    extract_times("Tue, May 5 by 12:00 PM") %>%
      as.character(),
    "12:00"
  )

  testthat::expect_equal(
    extract_times(NA),
    ""
  )

  testthat::expect_equal(
    extract_times("Tue, May 5 by 3:00 PM") %>%
      as.character(),
    "15:00"
  )

  # For whatever reason, sometimes this is the response :/
  testthat::expect_equal(
    extract_dates("1 or 2 Days"),
    ""
  )

  scrubbed_mail <-
    some_mail %>%
    scrub_mail()

  testthat::expect_gt(
    ncol(scrubbed_mail),
    ncol(some_mail)
  )

  sample_date_row <-
    which(scrubbed_mail$delivery_date == sample_date)[1]

  # Time shouldn't be NA because we had a "by" in the delivery_date
  # Should be converted into 24hr
  testthat::expect_false(
    stringr::str_detect(scrubbed_mail$delivery_by_time[sample_date_row], "M")
  )
})



testthat::test_that("Extract date works", {
  future_month <-
    months(lubridate::today() + 365)

  future_date <-
    glue::glue("Fri, {future_month} 20")

  testthat::expect_is(
    extract_dates(future_date),
    "Date"
  )

  # Package can't be delivered to a past date
  testthat::expect_gt(
    extract_dates(future_date) %>% as.numeric(),
    lubridate::today() %>% as.numeric()
  )

  past_month <-
    months(lubridate::today() - 30)

  past_date <-
    glue::glue("Fri, {past_month} 20")

  testthat::expect_is(
    extract_dates(past_date),
    "Date"
  )

  # Package can't be delivered to a past date, so we assume it's next year
  testthat::expect_gt(
    extract_dates(past_date) %>% as.numeric(),
    lubridate::today() %>% as.numeric()
  )
})
