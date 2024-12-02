#' Thought/speech bubble/balloon
#'
#' @export
#' @param x (character) a character vector
#' @param width (integer/numeric) width of each line. default: 60
#' @return character vector of length greater than the input `x`
#' @note modified from <https://github.com/schochastics/startifyR>
#' @examplesIf rlang::is_installed("fortunes")
#' library(fortunes)
#' quote <- as.character(fortune())
#' bubble(x = quote)
#'
#' text_color <- sample(grDevices::colors(), 1)
#' text_style <- crayon::make_style(text_color)
#' text_style(bubble(quote))
#'
#' cat(bubble(paste(quote, collapse = " ")), sep = "\n")
bubble <- function(x, width = 60) {
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
  c(empty_to_avoid_rlang_header, top, quote, bottom)
}

#' Make the tail part of a thought bubble
#' 
#' @export
#' @param animal (character) a string
#' @param thought_sym (character) scalar character to use for the
#' speech bubble tail (see <https://en.wikipedia.org/wiki/Speech_balloon>).
#' default: "o"
#' @param max_char_length (numeric) length of the maximum line. this is used
#' to determine how much whitespace padding to add to the left of
#' `thought_sym`
#' @examplesIf interactive()
#' bubble_tail(animals[["chicken"]])
#' cat(bubble_tail(animals[["chicken"]]), sep = "\n")
#' cat(bubble_tail(animals[["chicken"]]), sep = "\n")
#' cat(bubble_tail(animals[["chicken"]], "%"), sep = "\n")
#' 
#' bubble_tail2(59)
#' cat(bubble_tail2(59), sep = "\n")
#' cat(bubble_tail2(11), sep = "\n")
#' cat(bubble_tail2(11, "%"), sep = "\n")
bubble_tail <- function(animal, thought_sym = "o") {
  animal_split <- strsplit(animal, "\n")[[1]]
  animal_split <- animal_split[nchar(animal_split) > 0]
  n_first_spaces <- length(gregexpr("\\s", animal_split[1])[[1]])
  c(
    string_pad(thought_sym, n_first_spaces - 2, "left"),
    string_pad(thought_sym, (n_first_spaces - 2) + 2, "left")
  )
}

#' @export
#' @rdname bubble_tail
bubble_tail2 <- function(max_char_length, thought_sym = "o") {
  c(
    string_pad(thought_sym, floor((max_char_length + 4) / 3), "left"),
    string_pad(thought_sym, floor((max_char_length + 4) / 3) + 2, "left")
  )
}

string_pad <- function(string, n, side) {
  fmt <- switch(side,
    left = paste0("%", n, "s"),
    right = paste0("%-", n, "s")
  )
  sprintf(fmt, string)
}
