check_color <- function(clr) {
  if (!is.null(clr) && !all(inherits(clr, c("crayon", "character")))) {
    stop("All colors must be of class character or crayon",
         call. = FALSE)
  }
  
  if (all(inherits(clr, "character"))) {
    if (length(clr) > 1 || clr == "rainbow") {
      # check4pkg("multicolor")
      
      # Change "rainbow" into roygbiv
      # clr <- multicolor::insert_rainbow(clr)
      clr <- cowsay_insert_rainbow(clr)
      
      if (!all(is.character(clr))) {
        stop("If color arguments have > length 1, all colors must be of class character",
             call. = FALSE)
      }
    }
  }
  return(clr)
}

cowsay_insert_rainbow <- function(clr) {
  if (inherits(clr, "crayon")) {
    return(clr)
  }
  else if (any(clr == "rainbow")) {
    rb_idx <- which(clr == "rainbow")
    clr[rb_idx] <- list(c("red", "orange", "yellow", "green",
      "blue", "purple"))
    clr <- unlist(clr)
  }
  return(clr)
}
