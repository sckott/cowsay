#' Sling messages and warnings with flair
#' 
#' @importFrom lubridate with_tz
#' @param what What do you want to say?
#' @param by Type of thing, one of cow, chicken, poop
#' @param type One of message (default), warning, or string (returns string)
#' @examples
#' say()
#' say("what")
#' say('time')
#' say('time', "poop")
#' say("ain't that some shit")
#' say("ain't that some shit", "chicken")
#' say("ain't that some shit", "poop")
#' say("ain't that some shit", "poop")
#' say("ain't that some shit", "poop", "warning")
#' say("ain't that some shit", "poop", "string")
#' @export

say <- function(what="Hello world!", by="cow", type="message")
{
  cow <- "\n ----- \n %s \n ------ \n    \\\   ^__^ \n     \\\  (oo)\\\ ________ \n        (__)\\\         )\\\ /\\\ \n             ||------w|\n             ||      ||"
  chicken <- "
\n ----- \n %s \n ------ \n    \\\   \n     \\\  
         _
       _/ }
      `>' \\\
      `|   \\\
       |   /'-.     .-.
        \\\'     ';`--' .'
         \\\'.    `'-./
          '.`-..-;`
            `;-..'
            _| _|
            /` /`
  "
  poop <- 
    "
\n ----- \n %s \n ------ \n    \\\   \n     \\\  
     (   )
  (   ) (
   ) _   )
    ( \\_
  _(_\\\ \\)__
 (____\\\ ___)) "
  by <- match.arg(by, choices=c("cow","chicken","poop"))
  if(what=="time")
    what <- with_tz(Sys.time(), "")
  switch(type, 
         message = message(sprintf(eval(parse(text=by)), what)),
         warning = warning(sprintf(eval(parse(text=by)), what)),
         string = sprintf(eval(parse(text=by)), what))
}

# aardvark <- 
# message("
#              _.---._    /\\\\\ 
#           ./'       '--`\\//
#       ./              o \\\ 
#     /./\\\  )______   \__ \\\
#     \\. /  / / \\\ \\\   | \\\ \\\  \\\ \\\ ")
#     / /  \\\ \\\  | |\\\ \\\  \\\7
# ")