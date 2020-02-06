cowsay
======

[![cran
checks](https://cranchecks.info/badges/worst/cowsay)](https://cranchecks.info/pkgs/cowsay)
[![Build
Status](https://travis-ci.org/sckott/cowsay.svg?branch=master)](https://travis-ci.org/sckott/cowsay)
[![Build
status](https://ci.appveyor.com/api/projects/status/frfd77fcaxib2qkr/branch/master)](https://ci.appveyor.com/project/sckott/cowsay/branch/master)
[![rstudio mirror
downloads](https://cranlogs.r-pkg.org/badges/cowsay)](https://github.com/metacran/cranlogs.app)
[![cran
version](https://www.r-pkg.org/badges/version/cowsay)](https://cran.r-project.org/package=cowsay)

### What is this?

If you are familiar with `cowsay` on the cli, then you know what this
is, but for R. If not, read below. Why? Why not?

### Contributors (alphebetical)

-   Amanda Dobbyn
-   Andreas Brandmaier
-   Andy Teucher
-   Carson Sievert
-   Franz-Sebastian Krah
-   Guangchuang Yu
-   Karl Broman
-   Kiyoko Gotanda
-   Lucy D’Agostino McGowan
-   Marion Louveaux
-   Noam Ross
-   Paolo Sonego
-   Philipp Boersch-Supan
-   Rich FitzJohn
-   Scott Chamberlain
-   Thomas Leeper
-   Tyler Rinker

That’s right, it takes 17 people to make `cowsay` - it’s that hard.

### Contributing

See
[CONTRIBUTING.md](https://github.com/sckott/cowsay/blob/master/.github/CONTRIBUTING.md)

### Where to find ASCII animal art

Sources to look in:

-   <a href="http://www.chris.com/ascii/" class="uri">http://www.chris.com/ascii/</a> -
    again, this person only collects them - no mention of license,
    permissions, etc.
-   <a href="http://www.asciiworld.com/" class="uri">http://www.asciiworld.com/</a>

Permissions

In the ascii art mailing list
<a href="https://groups.google.com/forum/#!forum/alt.ascii-art" class="uri">https://groups.google.com/forum/#!forum/alt.ascii-art</a>
they say:

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

So, let’s go with this rule: Let’s include found (on the web) ascii art
in this pkg, include signature if there, and if no signature, put in a
`[nosig]` (see above).

### Quick watch start

Asciicast:
<a href="https://asciinema.org/a/7745" class="uri">https://asciinema.org/a/7745</a>

### Install

From CRAN

    install.packages("cowsay")

Dev version

    remotes::install_github("sckott/cowsay")

    library("cowsay")

### The animals

    sort(names(animals))
    #>  [1] "ant"          "anxiouscat"   "bat"          "bat2"         "behindcat"   
    #>  [6] "bigcat"       "buffalo"      "cat"          "chicken"      "chuck"       
    #> [11] "clippy"       "cow"          "daemon"       "duck"         "duckling"    
    #> [16] "egret"        "endlesshorse" "facecat"      "fish"         "frog"        
    #> [21] "ghost"        "grumpycat"    "hypnotoad"    "longcat"      "longtailcat" 
    #> [26] "monkey"       "mushroom"     "owl"          "pig"          "poop"        
    #> [31] "pumpkin"      "rabbit"       "shark"        "shortcat"     "signbunny"   
    #> [36] "smallcat"     "snowman"      "spider"       "squirrel"     "squirrel2"   
    #> [41] "stretchycat"  "trilobite"    "turkey"       "yoda"

### Say Something

    say('time')
    #> 
    #>  -------------- 
    #> 2020-02-06 10:59:19 
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

Add some color:

    library(multicolor)
    library(crayon)

    say("boo!", "ghost", 
        what_color = "cyan", by_color = "saddlebrown")

<p align="left">
<img src="./man/img/ghost.jpg" alt="ghost" height="200px">
</p>

    say("I love hooo you are!", "owl", 
        what_color = rgb(0, 1, 1), by_color = "#FF0000")

<p align="left">
<img src="./man/img/owl.jpg" alt="owl" height="200px">
</p>

String styles together
[crayon-style](https://github.com/r-lib/crayon#styles):

    say(what = "rms", by = "rms", 
            what_color = yellow$bgMagenta$bold,
            by_color = cyan$italic)

<p align="left">
<img src="./man/img/rms.jpg" alt="rms" height="350px">
</p>

This doesn’t preclude you from adding extra crayon colors to your `what`
string directly.

    say(what = paste0("hello ", crayon::yellow("there "), crayon::underline("world")), 
        by = "trilobite", 
        what_color = bgBlue$cyan$italic,
        by_color = "thistle")  # Don't ask me why "thistle" is pink/purple

<p align="left">
<img src="./man/img/trilobite.jpg" alt="trilobite" height="250px">
</p>

Multiple colors are also possible (uses the
[`multicolor`](https://github.com/aedobbyn/multicolor) package):

    say(what = "I'm a rare Irish buffalo",
        by = "buffalo", 
        what_color = c("salmon2", "darkcyan", "salmon2", "darkcyan"),
        by_color = c("green", "white", "orange"))

<p align="left">
<img src="./man/img/irish_buffalo.jpg" alt="irish_buffalo" height="350px">
</p>

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

From the catfacts API at
<a href="https://catfact.ninja" class="uri">https://catfact.ninja</a>

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

### Long cat

From the [a Boing Boing tweet on
2014-05-10](https://twitter.com/BoingBoing/status/465170473194512384)

    say("it's caturday", "longcat")
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
    #> Awkwardly worded questions will get much better answers if they are accompanied by some test data.
    #>  David Winsemius
    #>  in response to a poster's apology for an 'awkwardly worded question'
    #>  R-help
    #>  September 2012 
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
the `fortune` parameter is not `NULL` you don’t have pass anything to
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
    #> Tom Backer Johnsen: I have just started looking at R, and are getting more and more irritated at myself for not having done that before. However, one of the things I have not found in the documentation is some way of preparing output from R for convenient formatting into something like MS Word.
    #> Barry Rowlingson: Well whatever you do, don't start looking at LaTeX, because that will get you even more irritated at yourself for not having done it before.
    #>  Tom Backer Johnsen and Barry Rowlingson
    #>  R-help
    #>  February 2006 
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
    #>      \   __
    #>    / \
    #>    | |
    #>    @ @
    #>   || ||
    #>   || ||
    #>   |\_/|
    #>   \___/ GB

### Yoda

    say("fortune", by = "yoda")

### Bats!

    say("hi, i'm a bat", by="bat")
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
    #>  ------------- 
    #> It's not a question of trying variations, rather of following instructions.
    #>  Brian D. Ripley
    #>  about using 'Writing R Extensions'
    #>  R-help
    #>  January 2006 
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
    #> The fact that some people murder doesn't mean we should copy them. And murdering data, though not as serious, should also be avoided.
    #>  Frank E. Harrell
    #>  answering a question on categorization of continuous variables in survival modelling
    #>  R-help
    #>  July 2005 
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
    #>       `--{__________)        \/ [nosig]

### Egret

    say("je ne regrette rien", by = "egret")
    #> 
    #>  ----- 
    #> je ne regrette rien 
    #>  ------ 
    #>     \   
    #>      \  
    #>       \
    #>        \   _,
    #>       -==<' `
    #>           ) /
    #>          / (_.
    #>         |  ,-,`\
    #>          \\   \ \
    #>           `\,  \ \
    #>            ||\  \`|,
    #>  jgs      _|| `=`-'
    #>          ~~`~`

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
    #>                                                                                                                    clippy 
    #> "\n\n ----- \n%s \n ------ \n    \\   \n     \\   __\n   / \\\n   | |\n   @ @\n  || ||\n  || ||\n  |\\_/|\n  \\___/ GB\n"

Meta
----

-   License: MIT
-   Please note that this project is released with a [Contributor Code
    of
    Conduct](https://github.com/sckott/cowsay/blob/master/CODE_OF_CONDUCT.md).
    By participating in this project you agree to abide by its terms.
