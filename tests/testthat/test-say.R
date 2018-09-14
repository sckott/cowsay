library(crayon)

context("say")

test_that("say types works as expected", {
  # expect null on type=message
  expect_null(suppressMessages(say()))
  
  # expect warning on type=warning
  expect_warning(say(type = "warning"), "Hello world!")
  
  # expect string on type=string
  expect_is(say(type = "string"), "character")
  
  expect_equal(
    length(suppressMessages(say("foo", by_color = "cyan"))) + 1,
    length(suppressWarnings(say("foo", type = "warning")))
  )
  
  expect_silent(
    suppressMessages(say(what = "rms", by = "rms", 
        what_color = yellow$bgMagenta$bold,
        by_color = cyan$italic))
  )
  
  expect_silent(
    suppressMessages(say(what = "I'm a rare Irish buffalo", 
        by = "buffalo", what_color = "pink", 
        by_color = c("green", "white", "orange")))
  )
  
  expect_silent(
    suppressMessages(
      say("I'm not dying, you're dying", "yoda", 
          what_color = "green",
          by_color = colors())
    )
  )
  
  expect_silent(
    suppressMessages(
      say("asdfghjkl;'", "chicken", 
          what_color = blue,
          by_color = c("rainbow", colors()[sample(100, 1)], "rainbow"))
    )
  )

  # hypnotoad can say anything
  expect_true(grepl("foo", say(what = "foo", by = "hypnotoad", type = "string")))
  
  skip_if(!crayon::has_color(), message = "Shouldn't fail if colors can't be applied.")
  expect_error(
    say(by_color = 123),
    "All colors must be of class character or crayon"
  )
  
  expect_error(
    say(what_color = mean),
    "All colors must be of class character or crayon"
  )
})

test_that("say by works as expected", {
  expect_equal(suppressMessages(say('%s', by = "chicken", type = "string")), animals[["chicken"]])
  expect_equal(suppressMessages(say('%s', by = "ghost", type = "string")), animals[["ghost"]])
})

test_that("say fails well", {
  expect_error(say(list(4, 5)), "what has to be of length 1")
})

test_that("say fails with certain characters on windows", {
  skip_on_os(c("mac", "linux", "solaris"))
  expect_error(say("Hi", by = "longcat"), "If you're on Windows, you can't use")
})

