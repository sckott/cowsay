get_who <- function(by, length) {

  # animals <- get_animals()
  if (.Platform$OS.type == "windows") {
    ua <- c('shortcat','longcat','fish','signbunny','stretchycat',
            'anxiouscat','longtailcat','grumpycat','mushroom')
    
    if (by %in% ua) {
      stop("If you're on Windows, you can't use:\n", 
           paste0(sort(ua), collapse = "\n"), call. = FALSE)
    }
    
    animals <- animals[setdiff(names(animals), ua)]
  }
  
  by <- match.arg(by, c(choices = names(animals), "rms", "random"))

  if (by == "random") {
    by <- sample(c("rms", names(animals)), 1)
  }
  
  who <- switch(by, 
                rms = rms, 
                longcat = make_longcat(length), 
                animals[by])
  
  who
}

make_longcat <- function(length) {
  if (length > 0) {
    body <- paste(rep('    |    |\n', length), collapse = "")
    body <- gsub('\n$', '', body)
    longcat <- sprintf(animals['longcat'], "%s", body)
  } else {
    longcat <- animals['shortcat']
  }
  longcat
}

# get_animals <- function() {
#   if (.Platform$OS.type == "windows") {
#     # Find animals with unicode characters in them and remove
#     unicode_animals <- grep("[^\\x01-\\x7f]", animals, perl = TRUE)
#     animals <- animals[-unicode_animals]
#   }
#   animals
# }
