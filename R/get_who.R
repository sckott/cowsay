get_who <- function(by, length) {
  
  animals <- get_animals()
  
  by <- match.arg(by, c(choices=names(animals), "rms"))
  
  if (by == "rms") {
    who <- rms
  } else if (by == "longcat") {
    if(!length==0){
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

get_animals <- function() {
  if (.Platform$OS.type == "windows") {
    # Find animals with unicode characters in them and remove
    unicode_animals <- grep("[^\\x01-\\x7f]", animals, perl = TRUE)
    animals <- animals[-unicode_animals]
  }
  animals
}
