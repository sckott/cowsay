library(crayon)

test_that("say types works as expected", {
  # expect warning on type=warning
  expect_warning(say(type = "warning"), "Hello world!")

  # expect string on type=string
  expect_is(say(type = "string"), "character")

  # hypnotoad can say anything
  expect_true(
    grepl(
      "foo",
      say(what = "foo", by = "hypnotoad", type = "string")
    )
  )
})

test_that("say works with colors", {
  expect_equal(
    length(suppressMessages(say("foo", by_color = "cyan"))) + 1,
    length(suppressWarnings(say("foo", type = "warning")))
  )

  expect_equal(
    say(
      what = "rms", by = "rms",
      what_color = yellow$bgMagenta$bold,
      by_color = cyan$italic
    ),
    say(what = "rms", by = "rms", type = "print")
  )

  skip_if(
    !crayon::has_color(),
    message = "Shouldn't fail if colors can't be applied."
  )
  expect_error(
    say(by_color = 123),
    "All colors must be of class character or crayon"
  )

  expect_error(
    say(what_color = mean),
    "All colors must be of class character or crayon"
  )
})

test_that("say fails well", {
  expect_error(say(list(4, 5)), "what must be length 1")
})

test_that("say fails with certain characters on windows", {
  skip_on_os(c("mac", "linux", "solaris"))
  expect_error(
    say("Hi", by = "longcat"),
    "If you're on Windows, you can't use"
  )
})

length_long_cat <- function(x) {
  z <- strsplit(x, "\n")[[1]]
  length(grep("    \\|    \\|", z))
}

test_that("longcat works", {
  skip_on_os("windows")
  expect_equal(
    length_long_cat(
      say("it's caturday", "longcat", length = 11, type = "string")
    ),
    11
  )

  expect_equal(
    length_long_cat(
      say("it's caturday", "longcat", length = 1000, type = "string")
    ),
    1000
  )
})
