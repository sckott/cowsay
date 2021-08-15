check_color <- function(clr) {
  if (!is.null(clr) && !all(inherits(clr, c("crayon", "character")))) {
    stop("All colors must be of class character or crayon",
         call. = FALSE)
  }
  
  if (all(inherits(clr, "character"))) {
    if (length(clr) > 1 || clr == "rainbow") {
      check4pkg("multicolor")
      
      # Change "rainbow" into roygbiv
      clr <- multicolor::insert_rainbow(clr)
      
      if (!all(is.character(clr))) {
        stop("If color arguments have > length 1, all colors must be of class character",
             call. = FALSE)
      }
    }
  }
  return(clr)
}

check4pkg <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    stop(sprintf("The %s package is required; please install it.", pkg), call. = FALSE)
  } else {
    invisible(TRUE)
  }
}

filleramaIsBroken <- function(e) {
  return("I'm sorry Dave, I'm afraid I can't do that.")
}


