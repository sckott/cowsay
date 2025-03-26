#' Fetch an animal
#' @export
#' @param by (character) which animal to get
#' @return single string
#' @examples
#' animal_fetch("longtailcat")
#' cat(animal_fetch("longtailcat"))
#' animal_fetch("poop")
#' cat(animal_fetch("poop"))
animal_fetch <- function(by) {
  x <- readLines(system.file(sprintf("cows/%s.cow", by), package = "cowsay"))
  paste(x, collapse = "\n")
}
