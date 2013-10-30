#' Sling messages and warnings with flair
#' 
#' @importFrom lubridate now
#' @import fortunes
#' @param what What do you want to say?
#' @param by Type of thing, one of cow, chicken, poop, cat, ant, pumpkin, ghost, 
#' or spider
#' @param type One of message (default), warning, or string (returns string)
#' @examples
#' say()
#' say("what")
#' say('time')
#' say('time', "poop")
#' say("ain't that some shit")
#' say("ain't that some shit", "chicken")
#' say("ain't that some shit", "poop")
#' say("ain't that some shit", "poop", "warning")
#' say("ain't that some shit", "poop", "string")
#' say("icanhazpdf?", "cat")
#' say("boo!", "pumpkin")
#' say("fortune", "spider")
#' 
#' # Vary type of output, default calls message()
#' say("hell no!")
#' say("hell no!", type="warning")
#' say("hell no!", type="string")
#' 
#' # Using fortunes
#' say(what="fortune")
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
    
  by <- match.arg(by, choices=c("cow","chicken","poop","cat","ant","pumpkin","ghost","spider"))
  if(what=="time")
    what <- now()
  if(what=="fortune")
    what <- fortune(sample(1:316,1))
    what <- paste(as.character(what), collapse="\n ")
  switch(type, 
         message = message(sprintf(eval(parse(text=by)), what)),
         warning = warning(sprintf(eval(parse(text=by)), what)),
         string = sprintf(eval(parse(text=by)), what))
}