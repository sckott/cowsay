#' Endless horse
#' 
#' Each time you press enter, the horse keeps going...and going...
#' 
#' @export
#' @param what (character) What do you want to say? See details.
#' @param endless (logical) Should horse be enless, you better say yes. Default: TRUE
#' @param n (integer) Number of leg segments. Default: 10
#' @examples \dontrun{
#' endless_horse()
#' endless_horse(endless = FALSE)
#' endless_horse(n = 15)
#' }
endless_horse <- function(what="Hello world!", endless = TRUE, n = 10) {
  horse <- get_who("endlesshorse", NULL)
  message(sprintf(horse, what), appendLF = FALSE)
  if (endless) {
    for (i in 1:n) {
      iterendless()
    } 
  }
}

iterendless <- function(){
  x <- readline()
  if (x == "") {
    message("                    | | | |             || |", appendLF = FALSE)
  }
}
