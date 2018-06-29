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
  
  expect_error(
    say(by_color = 123),
    "by_color must be of type character or crayon"
  )
  
  expect_message(
    say(what = "rms", by = "rms", 
        what_color = yellow$bgMagenta$bold,
        by_color = cyan$italic)
  )
  
  blue_poop <- "\033[36m\n\n ----- \n\033[39m\033[38;5;224msalut\033[39m\033[36m \n ------ \n    \\   \n     \\\n     (   )\n  (   ) (\n   ) _   )\n    ( \\_\n  _(_\\ \\)__\n (____\\ ___)) [nosig]\033[39m"
  
  expect_equal(
    blue_poop,
    suppressMessages(say("salut", "poop", by_color = "cyan", what_color = "pink", type = "string"))
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

