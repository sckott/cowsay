
check_color <- function(clr) {
  if (!is.null(clr) && !all(inherits(clr, c("crayon", "character")))) {
    stop("All colors must be of class character or crayon",
         call. = FALSE)
  }
  
  # Change "rainbow" into roygbiv
  clr <- multicolor::insert_rainbow(clr)
  
  if (all(inherits(clr, "character"))) {
    if (length(clr) > 1) {
      check4pkg("multicolor")
      
      if (!all(is.character(clr))) {
        stop("If color arguments have > length 1, all colors must be of class character",
             call. = FALSE)
      }
    }
  }
  return(clr)
}

