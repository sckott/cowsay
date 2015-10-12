get_who <- function(by, length) {

  # animals <- get_animals()
  if (.Platform$OS.type == "windows") {
    ua <- c('shortcat','longcat','fish','signbunny','stretchycat',
            'anxiouscat','longtailcat','grumpycat','mushroom')
    if (by %in% ua) {
      stop("If you're on Windows, you can't use:\n", 
           paste0(sort(ua), collapse = "\n"), call. = FALSE)
    }
  }
  
  by <- match.arg(by, c(choices = names(animals), "rms", "random"))

  if (by == "random") {
    who <- sample(animals, 1)
  } else if (by == "rms") {
    who <- rms
  } else if (by == "longcat") {
    if (!length == 0) {
      body <- paste(rep('    |    |\n', length), collapse = "")
      body <- gsub('\n$', '', body)
      who <- sprintf(animals[by], "%s", body)
    } else {
      who <- animals['shortcat']
    }
  } else {
    who <- animals[by]
  }
  who
}

# get_animals <- function() {
#   if (.Platform$OS.type == "windows") {
#     # Find animals with unicode characters in them and remove
#     unicode_animals <- grep("[^\\x01-\\x7f]", animals, perl = TRUE)
#     animals <- animals[-unicode_animals]
#   }
#   animals
# }
