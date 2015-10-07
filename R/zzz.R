# check for leaflet
check4jsonlite <- function() {
  if (!requireNamespace("jsonlite", quietly = TRUE)) {
    stop("Please install jsonlite", call. = FALSE)
  } else {
    invisible(TRUE)
  }
}
