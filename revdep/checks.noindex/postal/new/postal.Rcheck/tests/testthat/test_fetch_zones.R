testthat::context("Test zone fetching")


testthat::test_that("fetch_zones_three_digit()", {
  testthat::expect_error(fetch_zones_three_digit())

  testthat::expect_error(fetch_zones_three_digit(NA))

  testthat::expect_error(fetch_zones_three_digit("foo123"))

  testthat::expect_error(fetch_zones_three_digit(20))

  testthat::expect_warning(fetch_zones_three_digit("9999999"))

  testthat::expect_message(fetch_zones_three_digit("0123456", verbose = TRUE))

  testthat::expect_equal(
    1,
    fetch_zones_three_digit("123", "456", as_range = TRUE) %>% nrow()
  )

  testthat::expect_equal(
    1,
    fetch_zones_three_digit("123", "456", as_range = FALSE) %>% nrow()
  )

  testthat::expect_equal(
    6,
    fetch_zones_three_digit("987", "654", show_details = TRUE) %>% ncol()
  )

  testthat::expect_equal(
    3,
    fetch_zones_three_digit("456", "789", show_details = FALSE) %>% ncol()
  )

  testthat::expect_equal(
    1,
    fetch_zones_three_digit(
      origin_zip = "123",
      destination_zip = "96240",
      exact_destination = TRUE
    ) %>%
      nrow()
  )

  testthat::expect_equal(
    2,
    fetch_zones_three_digit(
      origin_zip = "123",
      destination_zip = "96240",
      exact_destination = FALSE
    ) %>%
      nrow()
  )

  # # Not in use
  testthat::expect_is(
    fetch_zones_three_digit("0"),
    "data.frame"
  )

  testthat::expect_is(
    fetch_zones_three_digit("006"),
    "data.frame"
  )

  testthat::expect_is(
    fetch_zones_three_digit("123"),
    "data.frame"
  )
})


testthat::test_that("Five digit fetch", {
  testthat::expect_equal(1, fetch_zones_five_digit("60647", "11238") %>% nrow())
  testthat::expect_error(fetch_zones_five_digit("86753", "11238"))
  testthat::expect_error(fetch_zones_five_digit("123", "456"))
  testthat::expect_error(fetch_zones_five_digit("00001", "60647"))
  testthat::expect_error(fetch_zones_five_digit("11238", "00003"))
  testthat::expect_error(fetch_zones_five_digit(11238, "00003"))
})


testthat::test_that("Priority Mail exceptions are noted", {
  has_priority_exceptions <-
    fetch_zones_five_digit("40360", "09756",
      show_details = TRUE,
      verbose = TRUE
    )

  testthat::expect_equal(
    "3",
    has_priority_exceptions$specific_to_priority_mail
  )
})


testthat::test_that("3 and 5 digit endpoints agree on zone", {
  origins <- c("11238", "60647", "80205")
  destinations <- c("98109", "02210", "94707")

  three_d <- purrr::map2_dfr(
    origins, destinations,
    fetch_zones_three_digit
  )

  five_d <- purrr::map2_dfr(
    origins, destinations,
    fetch_zones_five_digit
  )

  testthat::expect_equal(three_d$zone, five_d$zone)
})


# Create temp dir for our csv
dir.create(here::here("tmp"))

some_zips <- fetch_all(sample(all_possible_origins, 2),
  write_to = here::here("tmp", "test_file.csv")
)

test_file <- readr::read_csv(here::here("tmp", "test_file.csv"))


testthat::test_that("We can grab all origins", {
  testthat::expect_is(
    some_zips,
    "data.frame"
  )

  testthat::expect_is(
    test_file,
    "data.frame"
  )
})

# Clean up
unlink(here::here("tmp"), recursive = TRUE)


# Warn on non-csv extension
testthat::expect_warning({
  dir.create(here::here("tmp"))
  fetch_all(sample(all_possible_origins, 2),
    write_to = here::here("tmp", "test_file_notcsv.notacsv")
  )
  unlink(here::here("tmp"), recursive = TRUE)
})
