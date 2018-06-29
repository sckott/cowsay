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
#' @param what_color (character) A 
#' \href{https://github.com/r-lib/crayon#256-colors}{\code{crayon}}-suported text color
#' for \code{what}. You might try \code{colors()} or \code{?rgb} for ideas.
#' @param horse_color (character) A 
#' \href{https://github.com/r-lib/crayon#256-colors}{\code{crayon}}-suported text color
#' for your steed.
#' @examples \dontrun{
#' endless_horse()
#' endless_horse(endless = FALSE)
#' }
endless_horse <- function(what="Hello world!", endless = TRUE, wait = 0.5, 
                          what_color = NULL, horse_color = NULL) {
  
  if (!is.null(what_color) & !is.character(what_color)) {
    stop("what_color must be of type character", 
         call. = FALSE)
  }
  
  if (!is.null(horse_color) & !is.character(horse_color)) {
    stop("horse_color must be of type character", 
         call. = FALSE)
  }
  
  if (!is.null(what_color)) {
    what_color <- crayon::make_style(what_color)
  } else {
    what_color <- function(x) x
  }
  
  if (!is.null(horse_color)) {
    horse_color <- crayon::make_style(horse_color)
  } else {
    horse_color <- function(x) x
  }
  
  
  horse <- get_who("endlesshorse", NULL)
  
  what_pos_start <- 
    regexpr('%s', horse)[1] - 1
  
  what_pos_end <- what_pos_start + 3
  
  horse <- paste0(horse_color(substr(horse, 1, what_pos_start)),
                what_color(what),
                horse_color(substr(horse, what_pos_end, nchar(horse))))
  
  message(horse)
  while (endless) {
    tryCatch(interrupt=function(e) {endless <<- FALSE}, {
      Sys.sleep(wait)
      message(horse_color("                    | | | |             || |"))
      wait <- wait * 1.1
    })
  }
}
