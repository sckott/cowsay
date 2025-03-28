#' Endless horse
#'
#' Each time you press enter, the horse keeps going...and going...
#'
#' @export
#' @param what (character) What do you want to say? See details.
#' @param endless (logical) Should horse be endless, you better say yes.
#' Default: `TRUE`
#' @param wait How long to wait between leg segments (time grows
#' geometrically after the first iteration in order to keep the horse
#' on screen for a while, but it **will** keep going forever.  Or
#' until you hit escape/Ctrl-C depending on your platform).
#' @param what_color (character or crayon function) A
#' \href{https://github.com/r-lib/crayon#256-colors}{\code{crayon}}-suported
#' text color or
#' \href{https://github.com/r-lib/crayon#styles}{\code{crayon style function}}
#' to color `what`. You might try `colors()` or `?rgb` for ideas.
#' @param horse_color (character or crayon function) A
#' \href{https://github.com/r-lib/crayon#256-colors}{\code{crayon}}-suported
#' text color or
#' \href{https://github.com/r-lib/crayon#styles}{\code{crayon style function}}
#' to color your steed.
#' @examples
#' endless_horse(endless = FALSE)
#' @examplesIf interactive()
#' endless_horse()
#' endless_horse(what_color = crayon::bgBlue)
endless_horse <- function(
  what = "Hello world!",
  endless = TRUE,
  wait = 0.5,
  what_color = NULL,
  horse_color = NULL
) {
  if (
    crayon::has_color() == FALSE &&
      (!is_null(what_color) || !is_null(horse_color))
  ) {
    inform(c(
      "Colors cannot be applied in this environment :(",
      "Try using a terminal or RStudio/Positron/etc."
    ))
    what_color <- NULL
    horse_color <- NULL
  } else {
    what_color <- check_color(what_color)
    horse_color <- check_color(horse_color)
  }

  horse <- get_who("endlesshorse", NULL)
  what_pos_start <- regexpr("%s", horse)[1] - 1
  what_pos_end <- what_pos_start + 3

  horse <- paste0(
    c(
      color_text(bubble_say(what), what_color),
      bubble_tail(horse, thought_sym = "\\"),
      color_text(substr(horse, what_pos_end, nchar(horse)), horse_color)
    ),
    collapse = "\n"
  )

  message(horse)
  while (endless) {
    tryCatch(
      interrupt = function(e) {
        endless <<- FALSE
      },
      {
        Sys.sleep(wait)
        message(color_text(
          "                    | | | |             || |",
          horse_color
        ))
        wait <- wait * 1.1
      }
    )
  }
}
