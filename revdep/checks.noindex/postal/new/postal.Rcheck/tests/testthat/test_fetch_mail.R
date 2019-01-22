testthat::context("Test mail fetching")

testthat::test_that("postcalc returns something", {
  this_date <- get_shipping_date("today") %>%
    stringr::str_replace_all("-", "%2F")

  this_time <- get_shipping_date("now") %>%
    stringr::str_replace_all(":", "%3A")

  test <- glue::glue("https://postcalc.usps.com/Calculator/GetMailServices?countryID=0&countryCode=US&origin=60647&isOrigMil=False&destination=11238&isDestMil=False&shippingDate={this_date}&shippingTime={this_time}6%2F22%2F2018+12%3A00%3A00+AM&shippingTime=14%3A29&itemValue=&dayOldPoultry=False&groundTransportation=False&hazmat=False&liveAnimals=False&nonnegotiableDocument=False&mailShapeAndSize=Package&pounds=15&ounces=0&length=0&height=0&width=0&girth=0&shape=Rectangular&nonmachinable=False&isEmbedded=False")

  # Original hard-coded day and time: "shippingDate=6%2F22%2F2018+12%3A00%3A00+AM&shippingTime=14%3A29"

  lst <- jsonlite::fromJSON(test)

  testthat::expect_is(
    lst,
    "list"
  )
  testthat::expect_equal(
    lst$PageError,
    ""
  )

  testthat::expect_equal(
    10,
    lst$Page$MailServices %>%
      tibble::as_tibble() %>%
      dplyr::select(-ImageURL) %>%
      dplyr::select(-AdditionalDropOffLink) %>%
      purrr::map_df(replace_x) %>%
      tidyr::unnest(DeliveryOptions) %>%
      dplyr::select(-URL) %>%
      ncol()
  )

  bad_req <- "https://postcalc.usps.com/Calculator/GetMailServices?countryID=0&countryCode=US&origin=60647&isOrigMil=False&destination=11238&isDestMil=False&shippingDate=6%2F22%2F3018+12%3A00%3A00+AM&shippingTime=14%3A29&itemValue=&dayOldPoultry=False&groundTransportation=False&hazmat=False&liveAnimals=False&nonnegotiableDocument=False&mailShapeAndSize=Package&pounds=15&ounces=0&length=0&height=0&width=0&girth=0&shape=Rectangular&nonmachinable=False&isEmbedded=False"

  bad_lst <- jsonlite::fromJSON(bad_req)

  testthat::expect_equal(
    bad_lst$PageError,
    "No Mail Services were found."
  )
})


testthat::test_that("fetch_mail()", {
  testthat::expect_error(
    fetch_mail()
  )

  testthat::expect_error(
    fetch_mail("11238", "60647",
      shape = "neither"
    )
  )

  testthat::expect_error(
    fetch_mail("11238", "60647",
      shape = "rectangular",
      pounds = "foo"
    )
  )

  testthat::expect_error(
    fetch_mail("11238", "60647",
      shape = "rectangular",
      live_animals = "xyz"
    )
  )

  testthat::expect_error(
    fetch_mail(11238, 60647,
      shape = "rectangular",
      shipping_date = 14
    )
  )

  testthat::expect_error(
    fetch_mail("11238", "60647",
      shape = "rectangular",
      shipping_date = 14
    )
  )

  testthat::expect_error(
    fetch_mail("11238", "60647",
      shape = "nonrectangular",
      shipping_time = 123
    )
  )

  testthat::expect_error(
    fetch_mail("11238", "60647",
      shape = "rectangular",
      type = c("box", "envelope")
    )
  )

  testthat::expect_error(
    fetch_mail("11238", "60647",
      shape = "nonrectangular",
      live_animals = 123
    )
  )

  testthat::expect_error(
    fetch_mail("11238", "60647",
      shape = "nonrectangular",
      girth = 0
    )
  )

  testthat::expect_is(
    fetch_mail("11238", "60647",
      shape = "rectangular",
      verbose = TRUE
    ),
    "data.frame"
  )


  testthat::expect_is(
    fetch_mail(
      origin_zip = "60647",
      destination_zip = "11238",
      shape = "nonrectangular",
      pounds = 10,
      length = 12,
      width = 8,
      height = 4,
      girth = 7,
      live_animals = TRUE,
      verbose = TRUE
    ),
    "data.frame"
  )

  testthat::expect_is(
    fetch_mail(
      origin_zip = "60647",
      destination_zip = "11238",
      show_details = TRUE,
      shape = "rectangular",
      pounds = 10,
      length = 12,
      width = 8,
      height = 4
    ),
    "data.frame"
  )

  origins <- c("11238", "foo", "60647")
  destinations <- c("98109", "94707", "bar")

  much_mail_package <- purrr::map2_dfr(
    origins, destinations,
    fetch_mail,
    shape = "rectangular",
    pounds = 8,
    length = 7,
    width = 6,
    height = 5
  )

  testthat::expect_is(
    much_mail_package,
    "data.frame"
  )
})


testthat::test_that("fetch_mail()", {
  testthat::expect_error(
    fetch_mail()
  )

  testthat::expect_error(
    fetch_mail(88506, "90210",
      type = "envelope"
    )
  )

  testthat::expect_warning(
    fetch_mail("123", "456")
  )

  testthat::expect_error(
    fetch_mail("11238", "60647",
      type = "neither"
    )
  )

  testthat::expect_is(
    fetch_mail(
      origin_zip = "60647",
      destination_zip = "11238",
      type = "envelope"
    ),
    "data.frame"
  )

  # Date too far in the future -> PageError
  testthat::expect_equal(
    fetch_mail(
      origin_zip = "60647",
      destination_zip = "11238",
      type = "envelope",
      shipping_date = "3019-08-25"
    ) %>% dplyr::pull(retail_price), NA_character_
  )

  # Bad request
  testthat::expect_equal(
    fetch_mail(
      origin_zip = "foo",
      destination_zip = "11238",
      type = "envelope",
      shipping_date = "3019-08-25",
      n_tries = 1
    ) %>% dplyr::pull(retail_price), "no_success"
  )

  testthat::expect_is(
    fetch_mail(
      origin_zip = "60647",
      destination_zip = "11238",
      type = "box",
      hazardous_materials = TRUE
    ),
    "data.frame"
  )

  testthat::expect_is(
    fetch_mail(
      origin_zip = "60647",
      destination_zip = "11238",
      type = "box",
      show_details = TRUE
    ),
    "data.frame"
  )

  testthat::expect_is(
    testthat::expect_message(
      fetch_mail(
        origin_zip = "60647",
        destination_zip = "11238",
        type = "package",
        live_animals = TRUE,
        pounds = 10,
        ounces = 5
      )
    ),
    "data.frame"
  )

  origins <- c("11238", "foo", "60647")
  destinations <- c("98109", "94707", "bar")

  much_mail_flat <- purrr::map2_dfr(
    origins, destinations,
    fetch_mail,
    type = "box"
  )

  testthat::expect_is(
    much_mail_flat,
    "data.frame"
  )
})
