color_text <- function(txt, color) {
  if (is_null(color)) {
    out <- txt
  } else if (!is_null(color) && inherits(color, "crayon")) {
    out <- color(txt)
  } else if (!is_null(color) && is_character(color)) {
    if (length(color) <= 1) {
      color <- crayon::make_style(color)
      out <- color(txt)
    } else if (length(color) >= 1) {
      abort("by_color must be length 1 or NULL")
    }
  }
  return(out)
}

check_color <- function(clr) {
  if (!is_null(clr) && !all(inherits(clr, c("crayon", "character")))) {
    abort("All colors must be of class character or crayon")
  }

  if (is_character(clr)) {
    if (length(clr) > 1 || clr == "rainbow") {
      # Change "rainbow" into roygbiv
      clr <- cowsay_insert_rainbow(clr)

      if (!all(is_character(clr))) {
        abort("If color arguments > length 1, all colors must be character")
      }
    }
  }
  return(clr)
}

cowsay_insert_rainbow <- function(clr) {
  if (inherits(clr, "crayon")) {
    return(clr)
  } else if (any(clr == "rainbow")) {
    rb_idx <- which(clr == "rainbow")
    clr[rb_idx] <- list(c(
      "red", "orange", "yellow", "green",
      "blue", "purple"
    ))
    clr <- unlist(clr)
  }
  return(clr)
}
