#' Endless horse
#' 
#' Each time you press enter, the horse keeps going...and going...
#' 
#' @export
#' @param what (character) What do you want to say? See details.
#' @param endless (logical) Should horse be enless, you better say yes. Default: TRUE
#' @param wait How long to wait between leg segments (time grows
#' geometrically after the first iteration in order to keep the horse
#' on screen for a while, but it \emph{will} keep going forever.  Or
#' until you hit escape/Ctrl-C depending on your platform).
#' @examples \dontrun{
#' endless_horse()
#' endless_horse(endless = FALSE)
#' }
endless_horse <- function(what="Hello world!", endless = TRUE, wait = 0.5) {
  horse <- get_who("endlesshorse", NULL)
  message(sprintf(horse, what))
  while (endless) {
    tryCatch(interrupt=function(e) {endless <<- FALSE}, {
      Sys.sleep(wait)
      message("                    | | | |             || |")
      wait <- wait * 1.1
    })
  }
}
