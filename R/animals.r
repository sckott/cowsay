#' @title Animals
#'
#' @description Named vector of animals
#'
#' @details `animals` is a named character vector of animals,
#' with each element a character string of variable length specifying
#' an ASCII animal. Note that some have unicode characters that won't
#' play well on some operating systems.
#' @export
#' @examples
#' animals['cow']
#' animals['clippy']
#' animals[['clippy']]
animals <- c(
  cow = "\n ----- \n%s \n ------ \n    \\\   ^__^ \n     \\\  (oo)\\\ ________ \n        (__)\\\         )\\\ /\\\ \n             ||------w|\n             ||      ||"
  ,chicken = 
"\n ----- \n%s \n ------ \n    \\\   \n     \\\
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
            /` /` [nosig]
  "
,chuck = 
"\n ----- \n%s \n ------ \n    \\\   \n     \\\
                      @@@@@@@@@@@@@@                       
                   @@@@@@@@@@@@@@@@@@@@@@                  
                  @@@@@@@@@@@@@@@@@@@@@@@@@                
                  @@@@@@@@@@@@@@@@@@@@@@@@@@               
                  @@@@@@@@@@@@@@@@@@@@@@@@@@               
                 @@@@@@@@@@@@@@@@@@@@@@@@@@@               
                 @@@@@@@@@@@@@@@@@@@@@@@@@@@@              
                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@              
                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     
               @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
 @             @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  @@           @@@@@@@@@@@@@@@@@@     @@@@@@@@@@@@@@@@@@@@@
    @@@@@@@@@@@@@@@@    @@ @@@@         @@  @@@@@@@@@@@@@@@
       @@@@@@@@@@@@@      @@@@          @@@@@@@@@@@@@@@@@@@
          @@@@@@ @@@@@    @@@   @       @@@@@@@@@@ @@@@@@@ 
              @@     @ @                @@ @@@@@@@@   @@@  
                                              @@@@@@@  @   
                @     @@                   @ @@@@@@@@@     
                             @               @@@@@@@@ @@   
                     @@@@@@@@@@          @  @@@@@          
                  @@@@@@@@@@ @@           @@@@@  @         
                 @@@@        @@ @          @@@  @          
                  @@@           @          @@@             
                   @@@@@@@   @@ @          @@@@@           
                    @@@@@@@@@@            @@@@             
                     @@@@@@ @     @     @@@@@@@@           
                  @@ @ @@@@@@@@@ @@@@@@@@@@@@@@@@@         
                @@@  @@@@@   @@@@@@@@@@@@@@@@@@@@@         
      @@@@@@  @@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   
@@    @@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ [nosig]
  "

  ,clippy = "
\n ----- \n%s \n ------ \n    \\\   \n     \\\   __
   / \\
   | |
   @ @
  || ||
  || ||
  |\\_/|
  \\___/ GB
"
  ,poop =
"\n ----- \n%s \n ------ \n    \\\   \n     \\\
     (   )
  (   ) (
   ) _   )
    ( \\_
  _(_\\\ \\)__
 (____\\\ ___)) [nosig]"

  ,bigcat =
"\n ----- \n%s \n ------ \n    \\\   \n     \\\
                \\`*-.
                 )  _`-.
                .  : `. .
                : _   '  \\
                ; *` _.   `*-._
                `-.-'          `-.
                  ;       `       `.
                  :.       .       \\
                  .\\  .   :   .-'   .
                  '  `+.;  ;  '      :
                  :  '  |    ;       ;-.
                  ; '   : :`-:     _.`* ;
               .*' /  .*' ; .*`- +'  `*'
     [bug]     `*-*   `*-*  `*-*'
    "

  ,ant =
"\n ----- \n%s \n ------ \n    \\\   \n     \\\
       '\\__
      (o )     ___
      <>(_)(_)(___)
        < < > >
        ' ' ` `  [nosig]
  "

  ,pumpkin =
"\n ----- \n%s \n ------ \n    \\\   \n     \\\
                  ___
               ___)__|_
          .-*'          '*-,
         /      /|   |\\\     \\\
        ;      /_|   |_\\\     ;
        ;   |\\\           /|  ;
        ;   | ''--...--'' |  ;
         \\\  ''---.....--''  /
          ''*-.,_______,.-*'  [nosig]
  "

  ,ghost =
"\n ----- \n%s \n ------ \n    \\\   \n     \\\
     .-.
    (o o)
    | O \\\
     \\\   \\\
      `~~~' [nosig]
  "

  ,spider =
"\n ----- \n%s \n ------ \n    \\\   \n     \\\
              |
              |
              |
             __
          | /  \\\ |
         \\_\\\\  //_/
          .'/()\\\'.
           \\\\\  //  [nosig]
  "

  ,rabbit =
"\n ----- \n%s \n ------ \n    \\\   \n     \\\
      ( )_( )
      (='.'=)
      (^)_(^) [nosig]
  "

  ,pig =
"\n ----- \n%s \n ------ \n    \\\   \n     \\\
       _//| .-~~~-.
     _/oo  }       }-@
    ('')_  }       |
     `--'| { }--{  }
          //_/  /_/ [nosig]
  "

  ,snowman =
'\n ----- \n%s \n ------ \n    \\\   \n     \\\
     _[_]_
      (")
  >--( : )--<
    (__:__) [nosig]
  '

  ,frog =
"\n ----- \n%s \n ------ \n    \\\   \n     \\\
        (.)_(.)
     _ (   _   ) _
    / \\/`-----'\\/ \\
  __\\ ( (     ) ) /__
  )   /\\ \\._./ /\\   (
   )_/ /|\\   /|\\ \\_(  [nosig]
  "

  # From here:
  # http://chris.com/ascii/index.php?art=television/futurama
  ,hypnotoad =
"\n ----- \n%s \n ------
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

  # From here:
  # https://twitter.com/BoingBoing/status/465170473194512384
  ,shortcat =
'\n ----- \n%s \n ------ \n    \\\   \n     \\\
    .\uFF8A,,\uFF8A
    ( \uFF9F\u03C9\uFF9F)
    |\u3064  \u3064
    U " U
        [BoingBoing]
    '

  ,longcat =
'\n ----- \n%s \n ------ \n    \\\   \n     \\\
    .\uFF8A,,\uFF8A
    ( \uFF9F\u03C9\uFF9F)
    |\u3064  \u3064
%s
    U "  U
        [BoingBoing]
    '

  ,fish =
'\n ----- \n%s \n ------ \n    \\\   \n     \\\
  ><((((\u00BA>  ><((((\u00BA>  ><((((\u00BA>  ><((((\u00BA>  ><((((\u00BA>
      Kiyoko Gotanda
    '

  ,signbunny =
    '\n -------------- \n%s \n --------------
(\\__/) ||
(\u2022\u3145\u2022) ||
/   \u3065
          [nosig]
    '

  ,facecat =
  '\n -------------- \n%s \n --------------
    \\\
      \\\
         /\\\ /\\\
         (O o)
        =(:^:)=
           U      [nosig]
  '

  ,behindcat =
  '\n -------------- \n%s \n --------------
      \u005c
        \u005c
          \u005c
            \u007c\u005c___/\u007c
            )     (
           =\\\     /=
             )===(
            /     \u005c
            |     |
           /       \u005c
           \u005c       /
      jgs   \u005c__  _/
              ( (
               ) )
              (_(
  '

  ,stretchycat =
  '\n -------------- \n%s \n --------------
    \u005c
      \u005c
        \u005c
                        ,/\u007c         _.--\u201B\u201B^``-...___.._.,;
                      /, \u005c\u201B.     _-\u201B          ,--,,,--\u201B\u201B\u201B
                     {  \u005c    `_-\u201B\u201B       \u201B    /}\u201B
Jill                    `;;\u201B             ;   ; ;
                  ._.--\u201B\u201B     ._,,, _..\u201B  .;.\u201B
                  (,_....----\u201B\u201B\u201B     (,..--\u201B\u201B
  '

  ,anxiouscat =
  '\n -------------- \n%s \n --------------
    \u005c
      \u005c
        \u005c
        /\u005c_/\u005c         _
       /``   \u005c       / )
       \u007cn n   \u007c__   ( (
      =(Y =.\u201B`   `\u005c  \u005c \u005c
      {`"`        \u005c  ) )
      {       /    \u007c/ /
       \u005c\u005c   ,(     / /
        ) ) /-\u201B\u005c  ,_.\u201B
  jgs  (,(,/ ((,,/
  '

  ,longtailcat =
  '\n -------------- \n%s \n --------------
    \u005c
      \u005c
        \u005c
     /\u005c-/\u005c
    /a a  \u005c                                 _
   =\u005c Y  =/-~~~~~~-,_______________________/ )
     \u201B^--\u201B          ________________________/
       \u005c           /
       \u007c\u007c  \u007c---\u201B\u005c  \u005c
  jgs  (_(__\u007c   ((__\u007c
  '

  ,cat =
  '\n -------------- \n%s \n --------------
    \u005c
      \u005c
        \u005c
            \u007c\u005c___/\u007c
          ==) ^Y^ (==
            \u005c  ^  /
             )=*=(
            /     \u005c
            \u007c     \u007c
           /\u007c \u007c \u007c \u007c\u005c
           \u005c\u007c \u007c \u007c_\u007c/\u005c
      jgs  //_// ___/
               \u005c_)
  '

  ,trilobite =
  "\n -------------- \n%s \n --------------
    \u005c
      \u005c
        \u005c
          _____
       .'` ,-. `'.
      /   ([ ])   \u005c
     /.-\u0022\u0022`(`)`\u0022\u0022-.\u005c
      <'```(.)```'>
      <'```(.)```'>
       <'``(.)``'>
   sk   <``\u005c_/``>
         `'---'`
  "

  ,shark =

  "\n -------------- \n%s \n --------------
    \u005c
      \u005c
        \u005c
              /\u0022\u0022-._
              .       '-,
               :          '',
                ;      *     '.
                 ' *         () '.
                   \u005c               \u005c
                    \u005c      _.---.._ '.
                    :  .' _.--''-''  \u005c ,'
        .._           '/.'             . ;
        ; `-.          ,                \u005c'
         ;   `,         ;              ._\u005c
          ;    \u005c     _,-'                ''--._
          :    \u005c_,-'                          '-._
          \u005c ,-'                       .          '-._
          .'         __.-'';            \u005c...,__       '.
        .'      _,-'        \u005c              \u005c   ''--.,__  '\u005c
        /    _,--' ;         \u005c              ;           \u05c^.}
        ;_,-' )     \u005c  )\u005c      )            ;
             /       \u005c/  \u005c_.,-'             ;
            /                              ;
         ,-'  _,-'''-.    ,-.,            ;      PFA
      ,-' _.-'        \u005c  /    |/'-._...--'
     :--``             )/
  '
  "

  ,buffalo =
"\n -------------- \n%s \n --------------
    \u005c
      \u005c
        \u005c
                   _.-````'-,_
         _,.,_ ,-'`           `'-.,_
       /)     (\                   '``-.
      ((      ) )                      `\u005c
        \u005c)    (_/                        )\u005c
        |       /)           '    ,'    / \u005c
        `\u005c    ^'            '     (    /  ))
          |      _/\u005c ,     /    ,,`\u005c   (  \u0022`
          \u005cY,   |   \u005c  \u005c  | ````| / \u005c_ \u005c
            `)_/      \u005c  \u005c  )    ( >  ( >
                       \u005c( \u005c(     |/   |/
          mic & dwb  /_(/_(    /_(  /_(
    "


  ,grumpycat =
  '\n -------------- \n%s \n --------------
    \u005c
      \u005c
        \u005c
      \uFF8A _ \uFF8A
      \u0CA0 X \u0CA0
  '

  ,smallcat =
  '\n -------------- \n%s \n --------------
    \u005c
     \u005c
      \u005c
         /\\_/\\
        ( o.o )
         > ^ <      [nosig]\n\n' # from https://user.xmission.com/~emailbox/ascii_cats.htm

  ,yoda = 
"\n ----- \n%s \n ------ \n    \\\   \n     \\\
                   ____
                _.' :  `._
            .-.'`.  ;   .'`.-.
   __      / : ___\\ ;  /___ ; \\      __
  ,'_ \"\"--.:__;\".-.\";: :\".-.\":__;.--\"\" _`,
  :' `.t\"\"--.. '<@.`;_  ',@>` ..--\"\"j.' `;
       `:-.._J '-.-'L__ `-- ' L_..-;'
          \"-.__ ;  .-\"  \"-.  : __.-\"
             L ' /.------.\\ ' J
             \"-.   \"--\"   .-\"
             __.l\"-:_JL_;-\";.__
         .-j/'.;  ;\"\"\"\"  / .'\\\"-.
         .' /:`. \"-.:     .-\" .';  `.
      .-\"  / ;  \"-. \"-..-\" .-\"  :    \"-.
  .+\"-.  : :      \"-.__.-\"      ;-._   \\
  ; \\  `.; ;                    : : \"+. ;
  :  ;   ; ;                    : ;  : \\:
  ;  :   ; :                    ;:   ;  :
  : \\  ;  :  ;                  : ;  /  ::
  ;  ; :   ; :                  ;   :   ;:
  :  :  ;  :  ;                : :  ;  : ;
  ;\\    :   ; :                ; ;     ; ;
  : `.\"-;   :  ;              :  ;    /  ;
 ;    -:   ; :              ;  : .-\"   :
  :\\     \\  :  ;            : \\.-\"      :
  ;`.    \\  ; :            ;.'_..--  / ;
  :  \"-.  \"-:  ;          :/.\"      .'  :
   \\         \\ :          ;/  __        :
    \\       .-`.\\        /t-\"\"  \":-+.   :
     `.  .-\"    `l    __/ /`. :  ; ; \\  ;
       \\   .-\" .-\"-.-\"  .' .'j \\  /   ;/
        \\ / .-\"   /.     .'.' ;_:'    ;
  :-\"\"-.`./-.'     /    `.___.'
               \\ `t  ._  /  bug
                \"-.t-._:'
  "
  , mushroom = 
"\n ----- \n%s \n ------ \n    \\\   \n     \\\  \n      \\\
                ________
           __--\u00B4      \u00B0 `--__
       __-\u00B4     \u00B0      \u00B0     `-__
     (\u00B4    \u00B0    \u00B0          \u00B0     `)
     (\u00B0 \u00B0|    |\u00B0         \u00B0 |    | )
      `'''''''''`|'''''|\u00B4''''''''\u00B4
                 |     |
                 |:::::|
               /:|:::::|:\\
              /::|:::::|::\\
                 |     |
                 |^   ^|
                 |  _  | [FK]
                 |_____|
",  # Franz-Sebastian Krah
  endlesshorse =
"\n ----- \n%s \n ------ \n    \\\   \n     \\\  \n      \\\
       ,
    _,,)\\.~,,._
     (()`  ``)\\))),,_
      |     \\ ''((\\)))),,_          ____
      |6`   |   ''((\\())) \"-.____.-\"    `-.-,
      |    .'\\    ''))))'                  \\)))
      |   |   `.     ''                     ((((
      \\, _)     \\/                          |))))
       `'        |                          (((((
                 \\                  |       ))))))
                  `|    |           ,\\     /((((((
                   |   / `-.______.<  \\   |  )))))
                   |   |  /         `. \\  \\  ((((
                   |  / \\ |           `.\\  | (((
                   \\  | | |             )| |  ))
                    | | | |             || |  '   [endless.horse]
                    | | | |             || |",

bat =
"\n ------------- \n%s \n -------------- \n              \\\   \n               \\\  \n                \\\
        __.--'\\     \\.__./     /'--.__
    _.-'       '.__.'    '.__.'       '-._
  .'                                      '.
 /                                          \\
|                                            |
|                                            |
 \\         .---.              .---.         /
  '._    .'     '.''.    .''.'     '.    _.'
     '-./            \\  /           \\.-'
                      ''mrf
",
bat2 =
"\n ------------- \n%s \n -------------- \n              \\\   \n               \\\  \n                \\\
_____________________                              _____________________
`-._                 \\           |\\__/|           /                 _.-'
    \\                 \\          |    |          /                 /
     \\                 `-_______/      \\_______-'                 /
      |                                                          |
      |                                                          |
      |                                                          |
      /                                                          \\
     /_____________                                  _____________\\
                   `----._                    _.----'
                          `--.            .--'
                              `-.      .-'
                                 \\    / :F_P:
                                  \\  /
                                   \\/
",
turkey =
"\n ------------- \n%s \n -------------- \n              \\\   \n               \\\  \n                \\\
               .--.
              /} p \\             /}
             `~)-) /           /` }
              ( / /          /`}.' }
               / / .-'\"\"-.  / ' }-'}
              / (.'       \\/ '.'}_.}
             |            `}   .}._}
             |     .-=-';   } ' }_.}
             \\    `.-=-;'  } '.}.-}
              '.   -=-'    ;,}._.}
                `-,_  __.'` '-._}
              jgs   `|||
                   .=='=,
",
monkey =
"\n ------------- \n%s \n -------------- \n              \\\   \n               \\\  \n                \\\

                  .=\"=.
                _/.-.-.\\_     _
               ( ( o o ) )    ))
                |/  \"  \\|    //
                 \\'---'/    //
           jgs   /`\"\"\"`\\\\  ((
                / /_,_\\ \\\\  \\\\
                \\_\\_'__/  \\  ))
                /`  /`~\\   |//
               /   /    \\  /
          ,--`,--'\\/\\    /
          \'-- \"--'  '--'
",

daemon =
"\n ----- \n%s \n ------ \n    \\\   \n     \\\  \n      \\\
   \         ,        ,
    \       /(        )`
     \      \\ \\___   / |
            /- _  `-/  '
           (/\\/ \\ \\   /\\
           / /   | `    \
           O O   ) /    |
           `-^--'`<     '
          (_.)  _  )   /
           `.___/`    /
             `-----' /
<----.     __ / __   \\
<----|====O)))==) \\) /====
<----'    `--' `.__,' \\
             |        |
              \\       /
        ______( (_  / \\______
      ,'  ,-----'   |        \\
      `--{__________)        \\/ [nosig]
",
#egret by Joan Stark from http://www.chris.com/ascii/joan/www.geocities.com/SoHo/7373/birds.html#egret 
egret =
  "\n ----- \n%s \n ------ \n    \\\   \n     \\\  \n      \\\
       \\   _,
      -==<' `\
          ) /
         / (_.
        |  ,-,`\\
         \\\\   \\ \\
          `\\,  \\ \\
           ||\\  \\`|,
 jgs      _|| `=`-'
         ~~`~`
",
# duckling by Andreas Brandmaier, @brandmaier
duckling = 
  "\n ----- \n%s \n ------ \n    \\\   \n     \\\  \n      \\\
       \\

        >o  .
         ===    [ab]
                 
",
# duck by Andreas Brandmaier, @brandmaier
duck =
  "\n ----- \n%s \n ------ \n    \\\   \n     \\\  \n      \\\
         __
        /o \\
      <=   |         ==
        |__|        /===
        |   \\______/  =
        \\     ====   /
         \\__________/     [ab]
",
# owl by Andreas Brandmaier, @brandmaier
owl = 
  "\n ----- \n%s \n ------ \n    \\\   \n     \\\  \n      \\\
       /\\___/\\
       {o}{o}|
       \\ v  /|
       |    \\ \\
        \\___/_/       [ab] 
          | | 
",
# squirrel by Marion Louveaux, @marionlouveaux
squirrel = 
  "             ------ \n          %s \n             ------ \n                 \\\   \n                  \\\  \n                   \\\
                      . .     
                      |\\|\\_   
                      /  ^ \\  
                     /  _-_/\u00B0 
   \\\\\\\\\\\\\\\\\\       /   / \\    
  ////////////   /  \\ / ||    
 \\\\\\\\\\\\\\\\\\\\\\\\\\\\ /   /\\\\ \\\\    
////////////////   /  \\\\ \\\\   
 \\\\\\\\\\\\\\\\\\\\\\\\\\/   /  / `` ``  
     /////////   \\  /  \\      
 ML     \\\\\\\\\\\\___/_/___/      
",
# squirrel2 by Marion Louveaux, @marionlouveaux
 squirrel2 =
  "             ------ \n          %s \n             ------ \n                 \\\   \n                  \\\  \n                   \\\
                      . .     
                      |\\|\\_   
                      /  @ \\  
                     /  _-_/\u00B0 
   \\\\\\\\\\\\\\\\\\       /   / \\    
  ////////////   /  \\ / ||    
 \\\\\\\\\\\\\\\\\\\\\\\\\\\\ /   /\\\\ \\\\    
////////////////   /  \\\\ \\\\   
 \\\\\\\\\\\\\\\\\\\\\\\\\\/   /  / `` ``  
     /////////   \\  /  \\      
 ML     \\\\\\\\\\\\___/_/___/      
",
#max strandburg, https://www.asciiart.eu/animals/fish
goldfish="
------ 
%s 
------ 
  \\
   \\       /\`-._
    \\     /_,.._\`:-         
      ,.-'  ,   \`-:..-')   
      : o ):';      _  {   
       \`-._ \`'__,.-'\\\`-.)
           \`\\\\  \\,.-'\`   Max
"
)

