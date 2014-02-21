#' Sling messages and warnings with flair
#' 
#' @importFrom lubridate now
#' @importFrom RJSONIO fromJSON
#' @import fortunes
#' @param what What do you want to say?
#' @param by Type of thing, one of cow, chicken, poop, cat, ant, pumpkin, 
#' ghost, spider, rabbit, pig, snowman, frog, or hypnotoad. We use match.arg
#' internally, so you can use unique parts of words that don't conflict with others, 
#' like "g" for "ghost" because there's no other animal that starts with "g".
#' @param type One of message (default), warning, or string (returns string)
#' @export
#' @examples
#' say()
#' say("what")
#' say('time')
#' say('time', "poop")
#' say("who you callin chicken", "chicken")
#' say("ain't that some shit", "poop")
#' say("ain't that some shit", "poop", "warning")
#' say("ain't that some shit", "poop", "string")
#' say("icanhazpdf?", "cat")
#' say("boo!", "pumpkin")
#' say("hot diggity", "frog")
#' say("fortune", "spider")
#' 
#' # Vary type of output, default calls message()
#' say("hell no!")
#' say("hell no!", type="warning")
#' say("hell no!", type="string")
#' 
#' # Using fortunes
#' say(what="fortune")
#'
#' # Using catfacts
#' say("catfact", "cat")
#' 
#' # The hypnotoad
#' say(by="hypnotoad")
#' 
#' # The hypnotoad
#' say(by="hypnotoad")

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
  
  cat <- 
    "
\n ----- \n %s \n ------ \n    \\\   \n     \\\  
               \\`*-.
                 )  _`-.                 
                .  : `. .                
                : _   '  \               
                ; *` _.   `*-._          
                `-.-'          `-.       
                  ;       `       `.     
                  :.       .       \\
                  .\\  .   :   .-'   .   
                  '  `+.;  ;  '      :   
                  :  '  |    ;       ;-. 
                  ; '   : :`-:     _.`* ;
               .*' /  .*' ; .*`- +'  `*' 
               `*-*   `*-*  `*-*'        
    "
  
  ant <- 
  "
\n ----- \n %s \n ------ \n    \\\   \n     \\\  
       '\\__
      (o )     ___
      <>(_)(_)(___)
        < < > >
        ' ' ` `
  "  
  
  pumpkin <- 
  "
\n ----- \n %s \n ------ \n    \\\   \n     \\\  
                  ___
               ___)__|_
          .-*'          '*-,
         /      /|   |\\\     \\\
        ;      /_|   |_\\\     ;
        ;   |\\\           /|  ;
        ;   | ''--...--'' |  ;
         \\\  ''---.....--''  /
          ''*-.,_______,.-*'
  "
  
  ghost <- 
  "
\n ----- \n %s \n ------ \n    \\\   \n     \\\  
     .-.
    (o o)
    | O \\\
     \\\   \\\
      `~~~'
  "
 
  spider <- 
  "
\n ----- \n %s \n ------ \n    \\\   \n     \\\  
              |
              |
              |
             __ 
          | /  \\\ |
         \\_\\\\  //_/
          .'/()\\\'.
           \\\\\  //
  "
    
  rabbit <- 
  "
\n ----- \n %s \n ------ \n    \\\   \n     \\\  
      ( )_( )
      (='.'=)
      (^)_(^)
  "    

  pig <- 
  "
\n ----- \n %s \n ------ \n    \\\   \n     \\\  
       _//| .-~~~-.
     _/oo  }       }-@
    ('')_  }       |
     `--'| { }--{  }
          //_/  /_/
  "    

  snowman <- 
  '
\n ----- \n %s \n ------ \n    \\\   \n     \\\  
     _[_]_  
      (")  
  >--( : )--<
    (__:__)
  '
  
  frog <- 
  "
\n ----- \n %s \n ------ \n    \\\   \n     \\\  
        (.)_(.)
     _ (   _   ) _
    / \\/`-----'\\/ \\
  __\\ ( (     ) ) /__
  )   /\\ \\._./ /\\   (
   )_/ /|\\   /|\\ \\_(
  "

  # From here:
  # http://chris.com/ascii/index.php?art=television/futurama
  hypnotoad <-
  "
\n ----- \n %s \n ------
    \\\          ,'``.._   ,'``.
     \\\        :,--._:)\\,:,._,.:
      \\\       :`--,''   :`...';\\
               `,'       `---'  `.
               /                 :
              /                   \\
            ,'                     :\\.___,-.
           `...,---'``````-..._    |:       \\
             (                 )   ;:    )   \\  _,-.
              `.              (   //          `'    \\
               :               `.//  )      )     , ;
             ,-|`.            _,'/       )    ) ,' ,'
            (  :`.`-..____..=:.-':     .     _,' ,'
             `,'\\ ``--....-)='    `._,  \\  ,') _ '``._
          _.-/ _ `.       (_)      /     )' ; / \\ \\`-.'
         `--(   `-:`.     `' ___..'  _,-'   |/   `.)
             `-. `.`.``-----``--,  .'
               |/`.\\`'        ,','); SSt
                   `         (/  (/
  "

  by <- match.arg(by, choices=c("cow", "chicken", "poop", "cat", "ant",
      "pumpkin", "ghost", "spider", "rabbit", "pig", "snowman", "frog",
      "hypnotoad"))
  if(what=="time")
    what <- now()
  if(what=="fortune") {
    what <- fortune(sample(1:316,1))
    what <- paste(as.character(what), collapse="\n ")
  }
  if(what=="catfact"){
    what <- fromJSON('http://catfacts-api.appspot.com/api/facts?number=1')$facts
    by <- 'cat'
  }
  if(by=="hypnotoad"){
    what <- "All Glory to the HYPNO TOAD!"
  }
  switch(type,
         message = message(sprintf(get(by), what)),
         warning = warning(sprintf(get(by), what)),
         string = sprintf(get(by), what))
}