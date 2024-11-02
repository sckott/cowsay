#' Speech bubble
#'
#' @export
#' @param x (character) a character vector
#' @param width (integer/numeric) width of each line. default: 60
#' @param thought_sym (character) scalar character to use for the
#' speech bubble tail (see <https://en.wikipedia.org/wiki/Speech_balloon>).
#' default: "o"
#' @return character vector of length greater than the input `x`
#' @note modified from <https://github.com/schochastics/startifyR>
#' @examples
#' library(fortunes)
#' quote <- as.character(fortune())
#' bubble(x = quote)
#'
#' text_color <- sample(grDevices::colors(), 1)
#' text_style <- crayon::make_style(text_color)
#' text_style(bubble(quote))
#'
#' cat(bubble(paste(quote, collapse = " ")), sep = "\n")
bubble <- function(x, width = 60, thought_sym = "o") {
  empty_to_avoid_rlang_header <- ""
  x <- strwrap(x, width = width)
  n <- max(nchar(x))
  m <- length(x)
  top <- bottom <- paste0(c("+", rep("-", n + 4), "+"), collapse = "")
  quote <- rep("", m)
  for (i in seq_len(m)) {
    if (substr(x[i], 1, 1) != "-") {
      quote[i] <- paste0("|", string_pad(x[i], n + 4, "right"), "|")
    } else {
      quote[i] <- paste0("|", string_pad(x[i], n + 4, "left"), "|")
    }
  }
  thought <- c(
    string_pad(thought_sym, floor((n + 4) / 3), "left"),
    string_pad(thought_sym, floor((n + 4) / 3) + 2, "left")
  )
  c(empty_to_avoid_rlang_header, top, quote, bottom, thought)
}

string_pad <- function(string, n, side) {
  fmt <- switch(side,
    left = paste0("%", n, "s"),
    right = paste0("%-", n, "s")
  )
  sprintf(fmt, string)
}
