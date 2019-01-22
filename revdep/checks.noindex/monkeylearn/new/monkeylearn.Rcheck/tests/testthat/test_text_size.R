context("check text size")
test_that("A too long text creates an error", {
  expect_error(
    monkeylearn_classify(request = toString(rep("lala", 400000))),
    "Each text in the request should be smaller than 500 kb"
  )
})

test_that("Blank texts are handled properly", {
  expect_warning(
    monkeylearn_extract(request = "  "),
    "You only entered blank text in the request"
  )
  expect_message(
    monkeylearn_extract(request = c("  ", "I do not know what the horse is doing in the house")),
    "The parts of your request that are only blank are not sent to the API."
  )


  expect_warning(
    monkeylearn_classify(request = "  "),
    "You only entered blank text in the request"
  )
  expect_message(
    monkeylearn_classify(request = c("  ", "I do not know what the horse is doing in the house")),
    "The parts of your request that are only blank are not sent to the API."
  )
})
