#' Thought/speech bubble/balloon
#'
#' @export
#' @family bubble
#' @param x (character) a character vector
#' @param width (integer/numeric) width of each line. default: 60
#' @return character vector of length greater than the input `x`
#' @note modified from <https://github.com/schochastics/startifyR>
#' @details `bubble_say` gives the traditional bubble that you get when
#' you run `cowsay` on the command line, with carrots or slashes for the
#' sides, while `bubble_think` gives a slightly different bubble with
#' parens for the sides
#' @examplesIf rlang::is_installed("fortunes")
#' library(fortunes)
#' quote <- as.character(fortune())
#' bubble_say(x = quote)
#' 
#' cat(bubble_say(paste(quote, collapse = " ")), sep = "\n")
#' ch <- animal_fetch('chicken')
#' z <- paste(c(bubble_say(quote), bubble_tail(ch, "\\"), ch), collapse = "\n")
#' cat(z)
#'
#' @examplesIf rlang::is_installed("fortunes") && interactive()
#' text_color <- sample(grDevices::colors(), 1)
#' text_style <- crayon::make_style(text_color)
#' text_style(bubble_say(quote))
bubble_say <- function(x, width = 60) {
  top <-  "_"
  bottom <- "-"
  side <- "|"
  empty_to_avoid_rlang_header <- ""
  added_ws <- 2L
  x <- strwrap(x, width = width - 4)
  n <- max(nchar(x))
  m <- length(x)
  top_ <- paste0(c(" ", rep(top, n + added_ws), " "), collapse = "")
  bottom_ <- paste0(c(" ", rep(bottom, n + added_ws), " "), collapse = "")
  slant_top <- paste0(c("/", rep(" ", n + added_ws), "\\"), collapse = "")
  slant_bottom <- paste0(c("\\", rep(" ", n + added_ws), "/"), collapse = "")
  quote <- rep("", m)
  for (i in seq_len(m)) {
    if (substr(x[i], 1, 1) != top) {
      x[i] <- string_pad(x[i], nchar(x[i]) + 1, "left")
      if (m == 1) {
        quote[i] <- paste0("<", string_pad(x[i], n + added_ws, "right"), ">")
        next
      }
      if (i == 1) {
        quote[i] <- paste0("/", string_pad(x[i], n + added_ws, "right"), "\\")
      } else if (i == length(quote)) {
        quote[i] <- paste0("\\", string_pad(x[i], n + added_ws, "right"), "/")
      } else {
        quote[i] <- paste0(side, string_pad(x[i], n + added_ws, "right"), side)
      }
    } else {
      quote[i] <- paste0(side, string_pad(x[i], n + added_ws, "left"), side)
    }
  }
  c(empty_to_avoid_rlang_header, top_, quote, bottom_)
}

#' @export
#' @rdname bubble_say
bubble_think <- function(x, width = 60) {
  top <-  "_"
  bottom <- "-"
  left <- "("
  right <- ")"
  empty_to_avoid_rlang_header <- ""
  added_ws <- 2L
  x <- strwrap(x, width = width - 4)
  n <- max(nchar(x))
  m <- length(x)
  top_ <- paste0(rep(top, n + added_ws), collapse = "")
  bottom_ <- paste0(rep(bottom, n + added_ws), collapse = "")
  quote <- rep("", m)
  for (i in seq_len(m)) {
    if (substr(x[i], 1, 1) != top) {
      z <- string_pad(x[i], nchar(x[i]) + 1, "left")
      quote[i] <- paste0(left, string_pad(z, n + added_ws, "right"), right)
    } else {
      quote[i] <- paste0(left, string_pad(x[i], n + added_ws, "left"), right)
    }
  }
  top_ <- string_pad(top_, nchar(top_) + 1, "both")
  bottom_ <- string_pad(bottom_, nchar(bottom_) + 1, "both")
  c(empty_to_avoid_rlang_header, top_, quote, bottom_)
}

#' Make the tail part of a thought bubble
#'
#' @export
#' @family bubble
#' @param animal (character) a string
#' @param thought_sym (character) scalar character to use for the
#' speech bubble tail (see <https://en.wikipedia.org/wiki/Speech_balloon>).
#' default: "o"
#' @param max_char_length (numeric) length of the maximum line. this is used
#' to determine how much whitespace padding to add to the left of
#' `thought_sym`
#' @details `bubble_tail` uses the animal as input so that the tail is put
#' close to the top of the animal, whereas `bubble_tail2` just puts the tail
#' about a 1/3 of the way from the left most character given the max
#' character length
#' @examples
#' bubble_tail(animal_fetch('chicken'))
#' cat(bubble_tail(animal_fetch('chicken')), sep = "\n")
#' cat(bubble_tail(animal_fetch('chicken')), sep = "\n")
#' cat(bubble_tail(animal_fetch('chicken'), "%"), sep = "\n")
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
    string_pad(thought_sym, (n_first_spaces - 2) + 1, "left")
  )
}

#' @export
#' @rdname bubble_tail
bubble_tail2 <- function(max_char_length, thought_sym = "o") {
  c(
    string_pad(thought_sym, floor((max_char_length + 4) / 3), "left"),
    string_pad(thought_sym, floor((max_char_length + 4) / 3) + 1, "left")
  )
}

string_pad <- function(string, n, side) {
  fmt <- switch(side,
    left = paste0("%", n, "s"),
    right = paste0("%-", n, "s"),
    NULL
  )
  if (side == "both") {
    string <- string_pad(string, n, "left")
    string_pad(string, nchar(string) + 1, "right")
  } else {
    sprintf(fmt, string)    
  }
}
