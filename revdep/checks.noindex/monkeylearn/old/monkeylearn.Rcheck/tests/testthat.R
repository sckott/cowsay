library(testthat)
library(monkeylearn)

if (identical(tolower(Sys.getenv("NOT_CRAN")), "true")) {
  test_check("monkeylearn")
}
