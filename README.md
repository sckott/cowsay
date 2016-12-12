cowsay
======

[![Build
Status](https://travis-ci.org/sckott/cowsay.svg?branch=master)](https://travis-ci.org/sckott/cowsay)
[![Build
status](https://ci.appveyor.com/api/projects/status/frfd77fcaxib2qkr/branch/master)](https://ci.appveyor.com/project/sckott/cowsay/branch/master)
[![rstudio mirror
downloads](http://cranlogs.r-pkg.org/badges/cowsay)](https://github.com/metacran/cranlogs.app)
[![cran
version](http://www.r-pkg.org/badges/version/cowsay)](http://cran.rstudio.com/web/packages/cowsay)

### What is this?

If you are familiar with `cowsay` on the cli, then you know what this
is, but for R. If not, read below. Why? Why not?

### Contributors

-   Scott Chamberlain
-   Tyler Rinker
-   Thomas Leeper
-   Noam Ross
-   Rich FitzJohn
-   Kiyoko Gotanda
-   Carson Sievert
-   Andy Teucher
-   Karl Broman
-   Franz-Sebastian Krah
-   Lucy D'Agostino McGowan
-   Guangchuang Yu

That's right, it takes 12 people to make `cowsay` - it's that hard.

### Where to find ASCII animal art

Sources to look in:

-   <http://www.chris.com/ascii/> - again, this person only collects
    them - no mention of license, permissions, etc.
-   <http://www.asciiworld.com/>

Permissions

In the [ascii art mailing
list](https://groups.google.com/forum/#!forum/alt.ascii-art) they say:

     As for posting other people's ASCII art,
        after a discussion in news:alt.ascii-art       _     ___
        the following rules were agreed upon:         #_~`--'__ `===-,
        1.  If an ASCII ART picture has initials      `.`.     `#.,//
            on it, leave them on when posting it      ,_\_\     ## #\
        2.  If an ASCII ART picture doesn't have      `__.__    `####\
            initials on it,  mention  that  you            ~~\ ,###'~
            didn't  draw  it  when  posting  it.              \##'
        3.  If somebody  posts a picture without                  [nosig]
            initials and you have an original copy
            with initials on, feel free to re-post the original version.
            *   The re-post ought not to be taken personally, as we all
                know that ASCII art often loses proper credits.
                Responses to the re-post are not necessary.

        One contributor, name of Krogg, suggested the following:

        1.) Ultra polite:...ya make yer own ascii and use it.
        2.)  Very polite:...Ya contact the author and ask if ya
                            can use it...
        3.)       polite:...Ya use it but you keep the Credits
                            in there like they should be.
        4.)         rude:...Ya use it and strip credits.
        5.)    Very rude:...Ya use it and claim that it Is
                            _Your_ very own creation...

So, let's go with this rule: Let's include found (on the web) ascii art
in this pkg, include signature if there, and if no signature, put in a
`[nosig]` (see above).

### Quick watch start

Asciicast: <https://asciinema.org/a/7745>

### Install

From CRAN

    install.packages("cowsay")

Dev version

    install.packages("devtools")
    devtools::install_github("sckott/cowsay")

    library("cowsay")

### The animals

    sort(names(animals))
    #>  [1] "ant"          "anxiouscat"   "bat"          "bat2"        
    #>  [5] "behindcat"    "bigcat"       "buffalo"      "cat"         
    #>  [9] "chicken"      "clippy"       "cow"          "daemon"      
    #> [13] "endlesshorse" "facecat"      "fish"         "frog"        
    #> [17] "ghost"        "grumpycat"    "hypnotoad"    "longcat"     
    #> [21] "longtailcat"  "monkey"       "mushroom"     "pig"         
    #> [25] "poop"         "pumpkin"      "rabbit"       "shark"       
    #> [29] "shortcat"     "signbunny"    "smallcat"     "snowman"     
    #> [33] "spider"       "stretchycat"  "trilobite"    "turkey"      
    #> [37] "yoda"

### Say Something

    say('time')
    #> 
    #>  -------------- 
    #> 2016-12-12 11:47:47 
    #>  --------------
    #>     \
    #>       \
    #>         \
    #>             |\___/|
    #>           ==) ^Y^ (==
    #>             \  ^  /
    #>              )=*=(
    #>             /     \
    #>             |     |
    #>            /| | | |\
    #>            \| | |_|/\
    #>       jgs  //_// ___/
    #>                \_)
    #> 

    say("ain't that some shit", "chicken")
    #> 
    #> 
    #>  ----- 
    #> ain't that some shit 
    #>  ------ 
    #>     \   
    #>      \
    #>          _
    #>        _/ }
    #>       `>' \
    #>       `|   \
    #>        |   /'-.     .-.
    #>         \'     ';`--' .'
    #>          \'.    `'-./
    #>           '.`-..-;`
    #>             `;-..'
    #>             _| _|
    #>             /` /` [nosig]
    #> 

    say("boo!", "ghost")
    #> 
    #> 
    #>  ----- 
    #> boo! 
    #>  ------ 
    #>     \   
    #>      \
    #>      .-.
    #>     (o o)
    #>     | O \
    #>      \   \
    #>       `~~~' [nosig]
    #> 

### Vary type of output, default calls message()

    say("hell no!")
    #> 
    #>  -------------- 
    #> hell no! 
    #>  --------------
    #>     \
    #>       \
    #>         \
    #>             |\___/|
    #>           ==) ^Y^ (==
    #>             \  ^  /
    #>              )=*=(
    #>             /     \
    #>             |     |
    #>            /| | | |\
    #>            \| | |_|/\
    #>       jgs  //_// ___/
    #>                \_)
    #> 

    say("hell no!", type="warning")
    #> Warning in say("hell no!", type = "warning"): 
    #>  -------------- 
    #> hell no! 
    #>  --------------
    #>     \
    #>       \
    #>         \
    #>             |\___/|
    #>           ==) ^Y^ (==
    #>             \  ^  /
    #>              )=*=(
    #>             /     \
    #>             |     |
    #>            /| | | |\
    #>            \| | |_|/\
    #>       jgs  //_// ___/
    #>                \_)
    #> 

    say("hell no!", type="string")
    #> [1] "\n -------------- \nhell no! \n --------------\n    \\\n      \\\n        \\\n            |\\___/|\n          ==) ^Y^ (==\n            \\  ^  /\n             )=*=(\n            /     \\\n            |     |\n           /| | | |\\\n           \\| | |_|/\\\n      jgs  //_// ___/\n               \\_)\n  "

### Catfacts!!!!

From the [catfacts API](http://catfacts-api.appspot.com/)

    say("catfact", "cat")
    #> --------------
    #> When a domestic cat goes after mice, about 1 pounce in 3 results in a catch.
    #> --------------
    #>    \
    #>      \
    #>        \
    #>            |\___/|
    #>          ==) ^Y^ (==
    #>            \  ^  /
    #>             )=*=(
    #>            /     \
    #>            |     |
    #>           /| | | |\
    #>           \| | |_|/\
    #>      jgs  //_// ___/
    #>               \_)

### Random quote

From the iheartquotes API (<http://iheartquotes.com/api>)

> DOESN'T WORK RIGHT NOW

    say("iheart", "chicken")

### Long cat

From the [a Boing Boing tweet on
2014-05-10](https://twitter.com/BoingBoing/status/465170473194512384)

    say("it's caturday", "longcat")
    #> 
    #> 
    #>  ----- 
    #> it's caturday 
    #>  ------ 
    #>     \   
    #>      \
    #>     .ﾊ,,ﾊ
    #>     ( ﾟωﾟ)
    #>     |つ  つ
    #>     |    |
    #>     |    |
    #>     |    |
    #>     |    |
    #>     |    |
    #>     |    |
    #>     |    |
    #>     |    |
    #>     |    |
    #>     |    |
    #>     |    |
    #>     |    |
    #>     |    |
    #>     |    |
    #>     |    |
    #>     |    |
    #>     |    |
    #>     |    |
    #>     U "  U
    #>         [BoingBoing]
    #> 

### Grumpy cat

    say('NO!', by='grumpycat')
    #> 
    #>    
    #>  -------------- 
    #> NO! 
    #>  --------------
    #>     \
    #>       \
    #>         \
    #>       ﾊ _ ﾊ
    #>       ಠ X ಠ
    #> 

    say('WOKE UP TODAY, IT WAS TERRIBLE', by='grumpycat')
    #> 
    #>    
    #>  -------------- 
    #> WOKE UP TODAY, IT WAS TERRIBLE 
    #>  --------------
    #>     \
    #>       \
    #>         \
    #>       ﾊ _ ﾊ
    #>       ಠ X ಠ
    #> 

    say('I HAD FUN ONCE, IT WAS AWFUL', by='grumpycat')
    #> 
    #>    
    #>  -------------- 
    #> I HAD FUN ONCE, IT WAS AWFUL 
    #>  --------------
    #>     \
    #>       \
    #>         \
    #>       ﾊ _ ﾊ
    #>       ಠ X ಠ
    #> 

### Bunny Holding a sign

    say(by='signbunny')
    #> 
    #>  -------------- 
    #> Hello world! 
    #>  --------------
    #> (\__/) ||
    #> (•ㅅ•) ||
    #> /   づ
    #>           [nosig]
    #> 

### Fish

    say(by='fish')
    #> 
    #> 
    #>  ----- 
    #> Hello world! 
    #>  ------ 
    #>     \   
    #>      \
    #>   ><((((º>  ><((((º>  ><((((º>  ><((((º>  ><((((º>
    #>       Kiyoko Gotanda
    #> 

### R fortunes

    say('fortune','cat')
    #> 
    #>  -------------- 
    #> Tradition among experienced S programmers has always been that loops (typically 'for' loops) are intrinsically inefficient: expressing computations without loops has provided a measure of entry into the inner circle of S programming.
    #>  John Chambers
    #>  Programming With Data, p. 173
    #>  1998 
    #>  --------------
    #>     \
    #>       \
    #>         \
    #>             |\___/|
    #>           ==) ^Y^ (==
    #>             \  ^  /
    #>              )=*=(
    #>             /     \
    #>             |     |
    #>            /| | | |\
    #>            \| | |_|/\
    #>       jgs  //_// ___/
    #>                \_)
    #> 

You can also pick a particular fortune by number or regex search - if
the `fortune` parameter is not `NULL` you don't have pass anything to
the `what` parameter (the 1st parameter)

    say(fortune=100)
    #> 
    #>  -------------- 
    #> I'm not sure I'd trust any computer recommendation from 1976, no matter how famous the authors are.
    #>  Peter Dalgaard
    #>  after Samuel Edward Kemp cited a recommendation about nonlinear least squares computer programs from 'Box-Jenkins, 1976'
    #>  R-help
    #>  January 2005 
    #>  --------------
    #>     \
    #>       \
    #>         \
    #>             |\___/|
    #>           ==) ^Y^ (==
    #>             \  ^  /
    #>              )=*=(
    #>             /     \
    #>             |     |
    #>            /| | | |\
    #>            \| | |_|/\
    #>       jgs  //_// ___/
    #>                \_)
    #> 

    say(fortune='whatever')
    #> 
    #>  -------------- 
    #> Justin: Is there a function that just does whatever I'm thinking (aka whatever my homework question is...)?
    #> Joshua Ulrich: That's the magic_pony function.
    #>  Justin and Joshua Ulrich
    #>  stackoverflow.com
    #>  June 2013 
    #>  --------------
    #>     \
    #>       \
    #>         \
    #>             |\___/|
    #>           ==) ^Y^ (==
    #>             \  ^  /
    #>              )=*=(
    #>             /     \
    #>             |     |
    #>            /| | | |\
    #>            \| | |_|/\
    #>       jgs  //_// ___/
    #>                \_)
    #> 

### Trilobite

    say("Hi there :)", by='trilobite')
    #> 
    #>   
    #>  -------------- 
    #> Hi there :) 
    #>  --------------
    #>     \
    #>       \
    #>         \
    #>           _____
    #>        .'` ,-. `'.
    #>       /   ([ ])   \
    #>      /.-""`(`)`""-.\
    #>       <'```(.)```'>
    #>       <'```(.)```'>
    #>        <'``(.)``'>
    #>    sk   <``\_/``>
    #>          `'---'`
    #> 

### Shark

    say('Q: What do you call a solitary shark\nA: A lone shark', by='shark')
    #> 
    #>     
    #>  -------------- 
    #> Q: What do you call a solitary shark
    #> A: A lone shark 
    #>  --------------
    #>     \
    #>       \
    #>         \
    #>               /""-._
    #>               .       '-,
    #>                :          '',
    #>                 ;      *     '.
    #>                  ' *         () '.
    #>                    \               \
    #>                     \      _.---.._ '.
    #>                     :  .' _.--''-''  \ ,'
    #>         .._           '/.'             . ;
    #>         ; `-.          ,                \'
    #>          ;   `,         ;              ._\
    #>           ;    \     _,-'                ''--._
    #>           :    \_,-'                          '-._
    #>           \ ,-'                       .          '-._
    #>           .'         __.-'';            \...,__       '.
    #>         .'      _,-'        \              \   ''--.,__  '\
    #>         /    _,--' ;         \              ;           \^.}
    #>         ;_,-' )     \  )\      )            ;
    #>              /       \/  \_.,-'             ;
    #>             /                              ;
    #>          ,-'  _,-'''-.    ,-.,            ;      PFA
    #>       ,-' _.-'        \  /    |/'-._...--'
    #>      :--``             )/
    #>   '
    #> 

### Buffalo

    say('Q: What do you call a single buffalo?\nA: A buffalonely', by='buffalo')
    #> 
    #>     
    #>  -------------- 
    #> Q: What do you call a single buffalo?
    #> A: A buffalonely 
    #>  --------------
    #>     \
    #>       \
    #>         \
    #>                    _.-````'-,_
    #>          _,.,_ ,-'`           `'-.,_
    #>        /)     (                   '``-.
    #>       ((      ) )                      `\
    #>         \)    (_/                        )\
    #>         |       /)           '    ,'    / \
    #>         `\    ^'            '     (    /  ))
    #>           |      _/\ ,     /    ,,`\   (  "`
    #>           \Y,   |   \  \  | ````| / \_ \
    #>             `)_/      \  \  )    ( >  ( >
    #>                        \( \(     |/   |/
    #>           mic & dwb  /_(/_(    /_(  /_(
    #> 

### Clippy

    say(fortune=59, by="clippy")
    #> 
    #> 
    #>  ----- 
    #> Let's not kid ourselves: the most widely used piece of software for statistics is Excel.
    #>  Brian D. Ripley
    #>  'Statistical Methods Need Software: A View of Statistical Computing'
    #>  Opening lecture RSS 2002, Plymouth
    #>  September 2002 
    #>  ------ 
    #>     \   
    #>      \
    #>    __
    #>    / \
    #>    | |
    #>    @ @
    #>   || ||
    #>   || ||
    #>   |\_/|
    #>   \___/ GB

### Yoda

    say("Unlearn you must what learned you have", by="yoda")
    #> 
    #> 
    #> 
    #>  ----- 
    #> Unlearn you must what learned you have 
    #>  ------ 
    #>     \   
    #>      \
    #>                    ____
    #>                 _.' :  `._
    #>             .-.'`.  ;   .'`.-.
    #>    __      / : ___\ ;  /___ ; \      __
    #>   ,'_ ""--.:__;".-.";: :".-.":__;.--"" _`,
    #>   :' `.t""--.. '<@.`;_  ',@>` ..--""j.' `;
    #>        `:-.._J '-.-'L__ `-- ' L_..-;'
    #>           "-.__ ;  .-"  "-.  : __.-"
    #>              L ' /.------.\ ' J
    #>              "-.   "--"   .-"
    #>              __.l"-:_JL_;-";.__
    #>          .-j/'.;  ;""""  / .'\"-.
    #>          .' /:`. "-.:     .-" .';  `.
    #>       .-"  / ;  "-. "-..-" .-"  :    "-.
    #>   .+"-.  : :      "-.__.-"      ;-._   \
    #>   ; \  `.; ;                    : : "+. ;
    #>   :  ;   ; ;                    : ;  : \:
    #>   ;  :   ; :                    ;:   ;  :
    #>   : \  ;  :  ;                  : ;  /  ::
    #>   ;  ; :   ; :                  ;   :   ;:
    #>   :  :  ;  :  ;                : :  ;  : ;
    #>   ;\    :   ; :                ; ;     ; ;
    #>   : `."-;   :  ;              :  ;    /  ;
    #>  ;    -:   ; :              ;  : .-"   :
    #>   :\     \  :  ;            : \.-"      :
    #>   ;`.    \  ; :            ;.'_..--  / ;
    #>   :  "-.  "-:  ;          :/."      .'  :
    #>    \         \ :          ;/  __        :
    #>     \       .-`.\        /t-""  ":-+.   :
    #>      `.  .-"    `l    __/ /`. :  ; ; \  ;
    #>        \   .-" .-"-.-"  .' .'j \  /   ;/
    #>         \ / .-"   /.     .'.' ;_:'    ;
    #>   :-""-.`./-.'     /    `.___.'
    #>                \ `t  ._  /  bug
    #>                 "-.t-._:'
    #> 

### Bats!

    say("hi, i'm a bat", by="bat")
    #> 
    #> 
    #>  ------------- 
    #> hi, i'm a bat 
    #>  -------------- 
    #>               \   
    #>                \  
    #>                 \
    #>         __.--'\     \.__./     /'--.__
    #>     _.-'       '.__.'    '.__.'       '-._
    #>   .'                                      '.
    #>  /                                          \
    #> |                                            |
    #> |                                            |
    #>  \         .---.              .---.         /
    #>   '._    .'     '.''.    .''.'     '.    _.'
    #>      '-./            \  /           \.-'
    #>                       ''mrf

See also `bat2`

### Monkey!

    say("fortune", by = "monkey")
    #> 
    #> 
    #>  ------------- 
    #> Jesus and the rest of the R-help community: Thanks for your help.
    #>  Mike Saunders
    #>  after Jesus Frias answered his question about split-split plots
    #>  R-help
    #>  February 2005 
    #>  -------------- 
    #>               \   
    #>                \  
    #>                 \
    #> 
    #>                   .="=.
    #>                 _/.-.-.\_     _
    #>                ( ( o o ) )    ))
    #>                 |/  "  \|    //
    #>                  \'---'/    //
    #>            jgs   /`"""`\\  ((
    #>                 / /_,_\ \\  \\
    #>                 \_\_'__/  \  ))
    #>                 /`  /`~\   |//
    #>                /   /    \  /
    #>           ,--`,--'\/\    /
    #>           '-- "--'  '--'

### Daemon!

    say("fortune", by = "daemon")
    #> 
    #>  ----- 
    #> The widespread use of spreadsheets or SPSS data sets or SAS data sets which encourage the "single table with a gargantuan number of columns, most of which are missing data in most cases" approach to organization of longitudinal data is regrettable.
    #>  Douglas Bates
    #>  in a discussion about software for hierarchical data sets
    #>  R-help
    #>  February 2010 
    #>  ------ 
    #>     \   
    #>      \  
    #>       \
    #>             ,        ,
    #>            /(        )`
    #>            \ \___   / |
    #>             /- _  `-/  '
    #>            (/\/ \ \   /\
    #>            / /   | `    
    #>            O O   ) /    |
    #>            `-^--'`<     '
    #>           (_.)  _  )   /
    #>            `.___/`    /
    #>              `-----' /
    #> <----.     __ / __   \
    #> <----|====O)))==) \) /====
    #> <----'    `--' `.__,' \
    #>              |        |
    #>               \       /
    #>         ______( (_  / \______
    #>       ,'  ,-----'   |        \
    #>       `--{__________)        \/

See also `bat2`

### Endless horse

    endless_horse()
    ## -----
    ## Hello world!
    ## ------
    ##    \
    ##     \
    ##      \
    ##       ,
    ##    _,,)\.~,,._
    ##     (()`  ``)\))),,_
    ##      |     \ ''((\)))),,_          ____
    ##      |6`   |   ''((\())) "-.____.-"    `-.-,
    ##      |    .'\    ''))))'                  \)))
    ##      |   |   `.     ''                     ((((
    ##      \, _)     \/                          |))))
    ##       `'        |                          (((((
    ##                 \                  |       ))))))
    ##                  `|    |           ,\     /((((((
    ##                   |   / `-.______.<  \   |  )))))
    ##                   |   |  /         `. \  \  ((((
    ##                   |  / \ |           `.\  | (((
    ##                   \  | | |             )| |  ))
    ##                    | | | |             || |  '   [endless.horse]
    ##                    | | | |             || |
    ##
    ##                    | | | |             || |
    ##                    | | | |             || |
    ##                    | | | |             || |
    ##                    | | | |             || |
    ##                    | | | |             || |
    ##                    | | | |             || |
    ##                    | | | |             || |
    ##                    | | | |             || |
    ##                    | | | |             || |
    ##                    | | | |             || |

### Using pipes

    library("magrittr")
    "I HAD FUN ONCE, IT WAS AWFUL" %>% say('grumpycat')
    #> 
    #>    
    #>  -------------- 
    #> I HAD FUN ONCE, IT WAS AWFUL 
    #>  --------------
    #>     \
    #>       \
    #>         \
    #>       ﾊ _ ﾊ
    #>       ಠ X ಠ
    #> 

### I just want the animals!

Okay, hold your endless horses. Just use the exported vector `animals`,
and you can select the animal you want by name.

    animals['clippy']
    #>                                                                                                                      clippy 
    #> "\n\n ----- \n%s \n ------ \n    \\   \n     \\\n   __\n   / \\\n   | |\n   @ @\n  || ||\n  || ||\n  |\\_/|\n  \\___/ GB\n"
