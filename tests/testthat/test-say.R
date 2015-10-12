context("say")

test_that("say types works as expected", {
  # expect null on type=message
  expect_null(suppressMessages(say()))
  
  # expect warning on type=warning
  expect_warning(say(type = "warning"), "Hello world!")
  
  # expect string on type=string
  expect_is(say(type = "string"), "character")
})

test_that("say by works as expected", {
  expect_equal(suppressMessages(say('%s', by = "chicken", type = "string")), animals[["chicken"]])
  expect_equal(suppressMessages(say('%s', by = "ghost", type = "string")), animals[["ghost"]])
})

test_that("say length for longcat works as expected", {
  expect_more_than(
    nchar(suppressMessages(say(by = "longcat", length = 10, type = "string"))), 
    nchar(suppressMessages(say(by = "longcat", length = 3, type = "string")))
  )
})

test_that("say fails well", {
  expect_error(say(list(4, 5)), "what has to be of length 1")
})
