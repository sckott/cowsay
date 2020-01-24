check4pkg <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    stop(sprintf("The %s package is required; please install it.", pkg), call. = FALSE)
  } else {
    invisible(TRUE)
  }
}
