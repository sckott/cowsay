animals <- NULL # nocov start

.onLoad <- function(libname, pkgname) {
  cow_paths <- list.files(system.file("cows", package = "cowsay"))
  animals <<- gsub("\\.cow", "", cow_paths)
} # nocov end
