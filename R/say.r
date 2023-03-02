#' Sling messages and warnings with flair
#'
#' @export
#'
#' @param what (character) What do you want to say? See Details.
#' @param by (character) Type of thing, one of cow, chicken, chuck,
#' clippy, poop, bigcat, ant, pumpkin, ghost, spider, rabbit, pig,
#' snowman, frog, hypnotoad, shortcat, longcat, fish, signbunny,
#' facecat, behindcat, stretchycat, anxiouscat, longtailcat, cat,
#' trilobite, shark, buffalo, grumpycat, smallcat, yoda, mushroom, 
#' endlesshorse, bat, bat2, turkey, monkey, daemon, egret, duckling,
#' duck, owl, squirrel, squirrel2, goldfish, alligator, stegosaurus,
#' whale, wolf, or rms for Richard Stallman.
#' Alternatively, use "random" to have your message spoken by a random
#' character.
#' We use [match.arg()] internally, so you can use unique parts of
#' words that don't conflict with others, like "g" for "ghost" because there's
#' no other animal that starts with "g".
#' @param type (character) One of message (default), warning, print (default
#' in non-interactive mode), or string (returns string). If multiple colors are
#' supplied to `what_color` or `by_color`, type cannot be warning. (This is a
#' limitation of the \href{https://github.com/aedobbyn/multicolor}{multicolor}
#' packcage :/.) If run in non-interactive mode default type is print, so that
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
#' `c("red", "orange", "yellow", "green", "blue", "purple")`
#' @param length (integer) Length of longcat. Ignored if other animals used.
#' @param fortune An integer specifying the row number of fortunes.data.
#' Alternatively which can be a character and grep is used to try to find a
#' suitable row.
#' @param ... Further args passed on to [fortunes::fortune()]
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
#' - The fillerama API was an option ("arresteddevelopment", "doctorwho",
#' "dexter", "futurama", "holygrail", "simpsons", "starwars", "loremipsum"),
#' a text generator with quotes from shows and movies. However,
#' the API is currently down so you cannot use this option anymore.
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
#' say('time')
#' 
#' if (requireNamespace("multicolor", quietly=TRUE) && 
#' requireNamespace("jsonlite", quietly=TRUE)) {
#' say("meow", "cat", what_color = "blue")
#' say('time', "poop", by_color = "cyan", what_color = "pink")
#'
#' library(jsonlite)
#' say("hello world",
#'     by = "hypnotoad",
#'     what_color = c("royalblue1", "tomato2"),
#'     by_color = c("rainbow", "rainbow"))
#' say("whats up",
#'     what_color = crayon::cyan$bgMagenta,
#'     by_color = c("salmon1", "springgreen"))
#' }
#'
#' say("who you callin chicken", "chicken")
#' say("ain't that some shit", "poop")
#' say("icanhazpdf?", "cat")
#' say("boo!", "pumpkin")
#' say("hot diggity", "frog")
#' say("fortune", "spider")
#' say("fortune", "facecat")
#' say("fortune", "behindcat")
#' say("fortune", "smallcat")
#' say("fortune", "monkey")
#' say("fortune", "egret")
#' say("rms", "rms")
#'
#' # Vary type of output, default calls message()
#' say("hell no!")
#' say("hell no!", type="warning")
#' say("hell no!", type="string")
#'
#' # Using fortunes
#' say(what="fortune")
#' ## you don't have to pass anything to the `what` parameter if `fortune` is
#' ## not null
#' say(fortune=10)
#' say(fortune=100)
#' say(fortune='whatever')
#' say(fortune=7)
#' say(fortune=45)
#'
#' # Using catfacts
#' # say("catfact", "cat")
#'
#' # The hypnotoad
#' say(by="hypnotoad")
#'
#' # Trilobite
#' say(by='trilobite')
#'
#' # Shark
#' say('Q: What do you call a solitary shark\nA: A lone shark', by='shark')
#'
#' # Buffalo
#' say('Q: What do you call a single buffalo?\nA: A buffalonely', by='buffalo')
#'
#' # Clippy
#' say(fortune=59, by="clippy")

say <- function(what="Hello world!", by="cat",
                type=NULL,
                what_color=NULL, by_color=NULL,
                length=18, fortune=NULL, ...) {

  if (length(what) > 1) {
    stop("what has to be of length 1", call. = FALSE)
  }

  if (crayon::has_color() == FALSE && (!is.null(what_color) || !is.null(by_color))) {
    message("Colors cannot be applied in this environment :( Try using a terminal or RStudio.")
    what_color <- NULL
    by_color <- NULL
  } else {
    what_color <- check_color(what_color)
    by_color <- check_color(by_color)
  }

  if (is.null(type)) {
    if (interactive()) {
      type <- "message"
    } else {
      type <- "print"
    }
  }

  if (what == "catfact") {
    check4pkg("jsonlite")
    what <-
      jsonlite::fromJSON(
        'https://catfact.ninja/fact')$fact
    by <- 'cat'
  }

  who <- get_who(by, length = length)

  if (!is.null(fortune)) what <- "fortune"

  if (what == "time")
    what <- as.character(Sys.time())
  if (what == "fortune") {
    if ( is.null(fortune) ) fortune <- sample(1:360, 1)
    what <- fortune(which = fortune, ...)
    what <- what[!is.na(what)] # remove missing pieces (e.g. "context")
    what <- gsub("<x>", "\n", paste(as.character(what), collapse = "\n "))
  }

  if (by == "hypnotoad" && what == "Hello world!") {
    what <- "All Glory to the HYPNO TOAD!"
  }

  if (what == "rms") {
    what <- rmsfact::rmsfact()
  }

  if ( what %in% c("arresteddevelopment", "doctorwho", "dexter", "futurama",
    "holygrail", "simpsons", "starwars", "loremipsum")
  ) {
    stop("sorry, fillerama API is down", call.=FALSE)
    # check4pkg("jsonlite")
    # what <-
    #   jsonlite::fromJSON(
    #     paste0('http://api.chrisvalleskey.com/fillerama/get.php?count=1&format=json&show=', what))$db$quote
  }

  what_pos_start <-
    regexpr('%s', who)[1] - 1

  what_pos_end <- what_pos_start + 3

  color_text <- function(txt, c) {
    if (is.null(c)) {
      out <- txt
    } else if (!is.null(c) && inherits(c, "crayon")) {
      out <- c(txt)
    } else if (!is.null(c) && is.character(c)) {
      if (length(c) <= 1) {
        c <- crayon::make_style(c)
        out <- c(txt)
      } else if (length(c) >= 1) {
        out <- multicolor::multi_color(txt, c,
                                       type = "string")
      }
    }
    return(out)
  }

  # TODO: when multicolor doesn't color every character individually, this should be possible
  # and we can get rid of what_pos_start and what_pos_end
  # what <- color_text(what, what_color)
  # who <- color_text(who, by_color)
  # out <- sprintf(who, what)

  # switch(type,
  #        message = message(sprintf(who, what)),
  #        warning = warning(sprintf(who, what)),
  #        string = sprintf(who, what))

  out <- paste0(color_text(substr(who, 1, what_pos_start),
                           by_color),
                color_text(what,
                           what_color),
                color_text(substr(who, what_pos_end, nchar(who)),
                           by_color))

  if (type == "warning") {
    if (nchar(out) < 100) {
      wl <- 100
    } else if (nchar(out) > 8170) {
      wl <- 8170
    } else {
      wl <- nchar(out) + 1
    }
    warn_op <- options(warning.length = wl)
    on.exit(options(warn_op))
  }

  switch(type,
         message = message(out),
         warning = warning(out),
         print = cat(out),
         string = out)
}
