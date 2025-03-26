#' say/think factory
#' @param thought_sym (character) scalar character to use for the
#' speech bubble tail (see <https://en.wikipedia.org/wiki/Speech_balloon>).
#' default: "o"
#' @param say_or_think (character)
#' @keywords internal
say_think <- function(thought_sym, say_or_think) {
  function(
      what = "Hello world!", by = "cow", type = NULL,
      what_color = NULL, by_color = what_color, length = 18, fortune = NULL,
      width = 60, ...) {
    stopifnot("what must be length 1" = has_length(what, 1))

    if (
      crayon::has_color() == FALSE &&
        (!is_null(what_color) || !is_null(by_color))
    ) {
      inform(c(
        "Colors cannot be applied in this environment :(",
        "Try using a terminal or RStudio/Positron/etc."
      ))
      what_color <- NULL
      by_color <- NULL
    } else {
      what_color <- check_color(what_color)
      by_color <- check_color(by_color)
    }

    if (is_null(type)) {
      if (interactive()) {
        type <- "message"
      } else {
        type <- "print"
      }
    }

    if (what == "catfact") {
      rlang::check_installed("jsonlite")
      what <- jsonlite::fromJSON(catfact_api)$fact
      by <- "cat"
    }

    who <- get_who(by, length = length)

    if (!is_null(fortune)) {
      rlang::check_installed("fortunes")
      what <- "fortune"
    }

    if (what == "time") {
      what <- as.character(Sys.time())
    }

    if (what == "fortune") {
      rlang::check_installed("fortunes")
      if (is_null(fortune)) {
        fortune <- sample(1:360, 1)
      }
      what <- as.character(fortune(which = fortune, ...))
      what <- what[!are_na(what)] # remove missing pieces (e.g. "context")
      what <- gsub("<x>", "\n", paste(what, collapse = "\n "))
    }

    if (by == "hypnotoad" && what == "Hello world!") {
      what <- "All Glory to the HYPNO TOAD!"
    }

    if (what == "rms") {
      rlang::check_installed("rmsfact")
      what <- rmsfact::rmsfact()
    }

    if (what %in% fillerama_what) {
      abort("sorry, fillerama API is gone, sorry :(")
    }

    what_bubbled <- switch(say_or_think,
      say = bubble_say(x = what, width = width),
      think = bubble_think(x = what, width = width),
      abort("only 'say' and 'think' supported in say_think()")
    )
    what_styled <- color_text(what_bubbled, what_color)
    what_tail <- bubble_tail(who, thought_sym = thought_sym)
    tail_styled <- color_text(what_tail, what_color)
    who_styled <- color_text(who, by_color)
    what_who <- paste(c(what_styled, tail_styled, who_styled), collapse = "\n")

    if (type == "warning") {
      if (nchar(what_who) < 100) {
        wl <- 100
      } else if (nchar(what_who) > 8170) {
        wl <- 8170
      } else {
        wl <- nchar(what_who) + 1
      }
      warn_op <- options(warning.length = wl)
      on.exit(options(warn_op))
    }

    switch(type,
      message = message(what_who),
      warning = warning(what_who),
      print = cat(what_who),
      string = what_who
    )
  }
}

param_by <- function() {
  tmp <- sprintf("
    @param by (character) Who should say or think it? One of:
    %s. Alternatively, use 'random' to have your message spoken by a random
    character.  We use [rlang::arg_match()] internally, which does not
    support partial matching, so you'll get an informative error upon a partial
    match.",
    paste0(sort(c(animals, "rms")), collapse = ", ")
  )
  strwrap(tmp, 75)
}


#' Sling messages and warnings with flair
#'
#' @export
#'
#' @param what (character) What do you want to say? See Details.
#' @eval param_by()
#' @param type (character) One of message (default), warning, print (default
#' in non-interactive mode), or string (returns string). If run in
#' non-interactive mode default type is print, so that
#' output goes to stdout rather than stderr, where messages and warnings go.
#' @param what_color (character or crayon function) One or more
#' \href{https://github.com/r-lib/crayon#256-colors}{\code{crayon}}-suported
#' text color(s) or
#' \href{https://github.com/r-lib/crayon#styles}{\code{crayon style function}}
#' to color `what`. You might try `colors()` or `?rgb` for ideas.
#' Use "rainbow" for c("red", "orange", "yellow", "green", "blue", "purple").
#' @param by_color (character or crayon function) One or more
#' \href{https://github.com/r-lib/crayon#256-colors}{\code{crayon}}-suported
#' text color(s) or
#' \href{https://github.com/r-lib/crayon#styles}{\code{crayon style function}}
#' to color `who`. Use "rainbow" for
#' `c("red", "orange", "yellow", "green", "blue", "purple")`. By default is
#' set to be whatever color `what_color` is so you can have the same color
#' for both with less typing.
#' @param length (integer) Length of longcat. Ignored if other animals used.
#' @param fortune An integer (or number that can be coerced
#' to integer) specifying a fortune from the `fortunes` package - OR a 
#' string which is used as a pattern passed to [grep()] (and a random one is
#' selected upton multiple matches). Passed on to the `which` parameter of
#' `fortunes::fortune`
#' @param width (integer/numeric) width of each line. default: 60
#' @param ... Further args passed on to `fortunes::fortune()`
#'
#' @section what:
#' You can put in any phrase you like to the `what` parameter, OR you
#' can type in one of a few special phrases that do particular things.
#' They are:
#'
#' - "catfact": A random cat fact from https://catfact.ninja
#' - "fortune": A random quote from an R coder, from fortunes library
#' - "time": Print the current time
#' - "rms": Prints a random 'fact' about Richard Stallman from the
#'  [rmsfact::rmsfact()] package. Best paired with `by = "rms"`.
#'
#' @section by:
#' Note that if you choose `by='hypnotoad'` the quote is forced to be,
#' as you could imagine, 'All Glory to the HYPNO TOAD!'. For reference see
#' http://knowyourmeme.com/memes/hypnotoad
#'
#' signbunny: It's not for sure known who invented signbunny, but this article
#' http://www.vox.com/2014/9/18/6331753/sign-bunny-meme-explained thinks
#' they found the first use in this tweet:
#' https://twitter.com/wei_bluebear/status/329101645780770817
#'
#' trilobite: from http://www.retrojunkie.com/asciiart/animals/dinos.htm (site
#' down though)
#'
#' Note to Windows users: there are some animals (shortcat, longcat, fish,
#' signbunny, stretchycat, anxiouscat, longtailcat, grumpycat, mushroom) that
#' are not available because they use non-ASCII characters that don't display
#' properly in R on Windows.
#'
#' @examples
#' say()
#' say("what")
#' say("time")
#'
#' say("who you callin chicken", "chicken")
#' say("ain't that some shit", "poop")
#' say("icanhazpdf?", "cat")
#' say("boo!", "pumpkin")
#' say("hot diggity", "frog")
#'
#' # Vary type of output, default calls message()
#' say("hell no!")
#' say("hell no!", type = "warning")
#' say("hell no!", type = "string")
#' 
#' # The hypnotoad
#' say(by = "hypnotoad")
#'
#' # Trilobite
#' say(by = "trilobite")
#'
#' # Shark
#' say("Q: What do you call a solitary shark\nA: A lone shark", by = "shark")
#'
#' # Buffalo
#' say("Q: What do you call a single buffalo?\nA: A buffalonely", by = "buffalo")
#'
#' @examplesIf rlang::is_installed("fortunes")
#' # Using fortunes
#' library(fortunes)
#' say(what = "fortune")
#' ## you don't have to pass anything to the `what` parameter if `fortune` is
#' ## not null
#' say("fortune", "spider")
#' say("fortune", "facecat")
#' say("fortune", "behindcat")
#' say("fortune", "smallcat")
#' say("fortune", "monkey")
#' say("fortune", "egret")
#' say(fortune = 10)
#' say(fortune = 100)
#' say(fortune = "whatever")
#' say(fortune = 7)
#' say(fortune = 45)
#' # Clippy
#' say(fortune = 59, by = "clippy")
#' 
#' @examplesIf rlang::is_installed("rmsfact")
#' library(rmsfact)
#' say("rms", "rms")
#' 
#' @examplesIf rlang::is_installed("jsonlite")
#' # Using the catfacts API
#' library(jsonlite)
#' say("catfact", "cat")
say <- say_think(thought_sym = "\\", say_or_think = "say")

#' @export
#' @rdname say
think <- say_think(thought_sym = "o", say_or_think = "think")
