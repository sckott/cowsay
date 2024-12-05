get_who <- function(by, length) {
  if (.Platform$OS.type == "windows") {
    ua <- c(
      "shortcat", "longcat", "fish", "signbunny", "stretchycat",
      "anxiouscat", "longtailcat", "grumpycat", "mushroom"
    )

    if (by %in% ua) {
      abort(c(
        "If you're on Windows, you can't use:",
        set_names(sort(ua), "*")
      ))
    }

    animals <- animals[setdiff(names(animals), ua)]
  }

  by <- arg_match(
    arg = by,
    values = c(names(animals), "rms", "random"),
    error_call = parent.frame()
  )

  if (by == "random") {
    by <- sample(c("rms", names(animals)), 1)
  }

  switch(by,
    rms = rms,
    longcat = make_longcat(length),
    animals[by]
  )
}

make_longcat <- function(length) {
  if (length > 0) {
    body <- paste(rep("    |    |\n", length), collapse = "")
    body <- gsub("\n$", "", body)
    sprintf(animals[["longcat"]], body)
  } else {
    animals["shortcat"]
  }
}
