cowsay
======



![cran checks](https://badges.cranchecks.info/worst/cowsay.svg)
[![R-check](https://github.com/sckott/cowsay/workflows/R-check/badge.svg)](https://github.com/sckott/cowsay/actions?query=workflow%3AR-check)
[![codecov](https://codecov.io/gh/sckott/cowsay/graph/badge.svg?token=fewxwGHXfv)](https://app.codecov.io/gh/sckott/cowsay)
[![rstudio mirror downloads](https://cranlogs.r-pkg.org/badges/cowsay)](https://github.com/r-hub/cranlogs.app)
[![cran version](https://www.r-pkg.org/badges/version/cowsay)](https://cran.r-project.org/package=cowsay)

### What is this?

If you are familiar with `cowsay` on the cli, then you know what this is, but for R.  If not, read below.  Why?  Why not?

### History

cowsay was originally written by Tony Monroe, with the first code released in 1999. The version of cowsay you get via homebrew is a fork by Andrew Janke at <https://cowsay.diamonds/> ([code repo](https://github.com/cowsay-org/cowsay)). The code for the original can be found at [tnalpgge/rank-amateur-cowsay](https://github.com/tnalpgge/rank-amateur-cowsay) and the original website can be seen [on the Wayback Machine](https://web.archive.org/web/20120225123719/http://www.nog.net/~tony/warez/cowsay.shtml). Both the original and version by Janke are both written in Perl. The cowsay you get with `apt` on Linux machines is the last version Monroe released in 2016 (v3.0.4 or possibly v3.0.3). 

This R package has some additional features the orginal cowsay doesn't have, but also lacks some features the original has. This package doesn't yet support custom eyes and tongue for the cow or any other animals.

### Contributors (alphabetical)




 * Amanda Dobbyn
 * Andreas Brandmaier
 * Andy Teucher
 * Carson Sievert
 * David Schoch
 * Franz-Sebastian Krah
 * Guangchuang Yu
 * Karl Broman
 * Kiyoko Gotanda
 * Lucy D'Agostino McGowan
 * Marion Louveaux
 * Noam Ross
 * Paolo Sonego
 * Philipp Boersch-Supan
 * Rich FitzJohn
 * Scott Chamberlain
 * Thomas Leeper
 * Tyler Rinker

That's right, it takes 18 people to make `cowsay` - it's that hard.

### Contributing

See [CONTRIBUTING.md][contrib]

### Where to find ASCII animal art

Sources to look in:

* https://asciiart.website/ - again, this person only collects them - no mention of license, permissions, etc.

Permissions

In the ascii art mailing list https://groups.google.com/forum/#!forum/alt.ascii-art they say:

```
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
```

So, let's go with this rule: Let's include found (on the web) ascii art in this pkg, include signature if there, and if no signature, put in a `[nosig]` (see above).

### Quick watch start

Asciicast: <https://asciinema.org/a/7745>

### Install

From CRAN


``` r
# install.packages("pak")
pak::pak("cowsay")
```

Dev version


``` r
# install.packages("pak")
pak::pak("sckott/cowsay")
```


``` r
library("cowsay")
```

### The animals


``` r
sort(animals)
#>  [1] "alligator"    "ant"          "anxiouscat"   "bat"          "bat2"        
#>  [6] "beavis"       "behindcat"    "bigcat"       "blowfish"     "buffalo"     
#> [11] "cat"          "chicken"      "chuck"        "clippy"       "cow"         
#> [16] "cow_borg"     "cow_dead"     "cow_greedy"   "cow_sleepy"   "cow_tired"   
#> [21] "cow_wired"    "cow_young"    "daemon"       "dragon"       "duck"        
#> [26] "duckling"     "egret"        "endlesshorse" "facecat"      "fish"        
#> [31] "frog"         "ghost"        "goldfish"     "grumpycat"    "hypnotoad"   
#> [36] "longcat"      "longtailcat"  "monkey"       "mushroom"     "owl"         
#> [41] "pig"          "poop"         "pumpkin"      "rabbit"       "shark"       
#> [46] "shortcat"     "signbunny"    "smallcat"     "snowman"      "spider"      
#> [51] "squirrel"     "squirrel2"    "stegosaurus"  "stretchycat"  "trilobite"   
#> [56] "turkey"       "whale"        "wolf"         "yoda"
```

### Say Something


``` r
say("time")
#> 
#>  ____________________________ 
#> < 2025-10-28 22:36:13.574411 >
#>  ---------------------------- 
#>       \
#>        \
#> 
#>         ^__^ 
#>         (oo)\ ________ 
#>         (__)\         )\ /\ 
#>              ||------w|
#>              ||      ||
```


``` r
say("ain't that some shit", "chicken")
#> 
#>  ______________________ 
#> < ain't that some shit >
#>  ---------------------- 
#>       \
#>        \
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
```

Add some color: 


``` r
library(crayon)
```



``` r
say("boo!", "ghost", what_color = "cyan", by_color = "saddlebrown")
```


<p align="left">
  <img src="./man/figures/ghost.png" alt="ghost" height="200px">
</p>



``` r
say(
  "I love hooo you are!",
  "owl",
  what_color = rgb(0, 1, 1),
  by_color = "#FF0000"
)
```


<p align="left">
  <img src="./man/figures/owl.png" alt="owl" height="200px">
</p>


String styles together [crayon-style](https://github.com/r-lib/crayon#styles):



``` r
say(
  what = "rms",
  by = "rms",
  what_color = yellow$bgMagenta$bold,
  by_color = cyan$italic
)
```


<p align="left">
  <img src="./man/figures/rms.png" alt="rms" height="350px">
</p>


This doesn't preclude you from adding extra crayon colors to your `what` string directly - but the results are not super pretty:



``` r
say(
  what = paste0("hello ", crayon::yellow("there "), crayon::underline("world")),
  by = "trilobite"
)
```

<p align="left">
  <img src="./man/figures/trilobite.png" alt="trilobite" height="250px">
</p>

### Vary type of output, default calls message()


``` r
say("hell no!")
#> 
#>  __________ 
#> < hell no! >
#>  ---------- 
#>       \
#>        \
#> 
#>         ^__^ 
#>         (oo)\ ________ 
#>         (__)\         )\ /\ 
#>              ||------w|
#>              ||      ||
```



``` r
say("hell no!", type = "warning")
#> Warning in say("hell no!", type = "warning"): 
#>  __________ 
#> < hell no! >
#>  ---------- 
#>       \
#>        \
#> 
#>         ^__^ 
#>         (oo)\ ________ 
#>         (__)\         )\ /\ 
#>              ||------w|
#>              ||      ||
```



``` r
say("hell no!", type = "string")
#> [1] "\n __________ \n< hell no! >\n ---------- \n      \\\n       \\\n\n        ^__^ \n        (oo)\\ ________ \n        (__)\\         )\\ /\\ \n             ||------w|\n             ||      ||"
```

### Long cat

From the a Boing Boing tweet on 2014-05-10 "twitter.com/BoingBoing/status/465170473194512384" (post may be gone)


``` r
say("it's caturday", "longcat")
#> 
#>  _______________ 
#> < it's caturday >
#>  --------------- 
#>  \
#>   \
#> 
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
```

### Grumpy cat


``` r
say("NO!", by = "grumpycat")
#> 
#>  _____ 
#> < NO! >
#>  ----- 
#>      \
#>       \
#> 
#>       ﾊ _ ﾊ
#>       ಠ X ಠ
```


``` r
say("WOKE UP TODAY, IT WAS TERRIBLE", by = "grumpycat")
#> 
#>  ________________________________ 
#> < WOKE UP TODAY, IT WAS TERRIBLE >
#>  -------------------------------- 
#>      \
#>       \
#> 
#>       ﾊ _ ﾊ
#>       ಠ X ಠ
```


``` r
say("I HAD FUN ONCE, IT WAS AWFUL", by = "grumpycat")
#> 
#>  ______________________________ 
#> < I HAD FUN ONCE, IT WAS AWFUL >
#>  ------------------------------ 
#>      \
#>       \
#> 
#>       ﾊ _ ﾊ
#>       ಠ X ಠ
```

### Bunny Holding a sign


``` r
say(by = "signbunny")
#> 
#>  ______________ 
#> < Hello world! >
#>  -------------- 
#> \
#> \
#> 
#> (\__/) ||
#> (•ㅅ•) ||
#> /   づ
#>           [nosig]
```

### Fish


``` r
say(by = "fish")
#> 
#>  ______________ 
#> < Hello world! >
#>  -------------- 
#>        \
#>         \
#> 
#>   ><((((º>  ><((((º>  ><((((º>  ><((((º>  ><((((º>
#>       Kiyoko Gotanda
```

### R fortunes


``` r
library(fortunes)
say("fortune", "cat")
#> 
#>  _________________________________________________________ 
#> / I'll go back to lurking in the daily R-Helps and not    \
#> | ask any more questions until I've read all the old      |
#> | R-help messages. I'm working on December 1998 right now |
#> | and reading forward. Perhaps by next year I'll will     |
#> | have read all the old R-help postings and I'll dare ask |
#> | another question then.  Earl F. Glynn R-help January    |
#> \ 2012                                                    /
#>  --------------------------------------------------------- 
#>          \
#>           \
#> 
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
```

You can also pick a particular fortune by number or regex search - if the `fortune` parameter is not `NULL` you don't have pass anything to the `what` parameter (the 1st parameter)


``` r
say(fortune = 100)
#> 
#>  _________________________________________________________ 
#> / I'm not sure I'd trust any computer recommendation from \
#> | 1976, no matter how famous the authors are.  Peter      |
#> | Dalgaard after Samuel Edward Kemp cited a               |
#> | recommendation about nonlinear least squares computer   |
#> \ programs from 'Box-Jenkins, 1976' R-help January 2005   /
#>  --------------------------------------------------------- 
#>       \
#>        \
#> 
#>         ^__^ 
#>         (oo)\ ________ 
#>         (__)\         )\ /\ 
#>              ||------w|
#>              ||      ||
```


``` r
say(fortune = "whatever")
#> 
#>  _________________________________________________________ 
#> / Justin: Is there a function that just does whatever I'm \
#> | thinking (aka whatever my homework question is...)?     |
#> | Joshua Ulrich: That's the magic_pony function.  Justin  |
#> \ and Joshua Ulrich stackoverflow.com June 2013           /
#>  --------------------------------------------------------- 
#>       \
#>        \
#> 
#>         ^__^ 
#>         (oo)\ ________ 
#>         (__)\         )\ /\ 
#>              ||------w|
#>              ||      ||
```

### Trilobite


``` r
say("Hi there :)", by = "trilobite")
```

````
#> 
#>  _____________ 
#> < Hi there :) >
#>  ------------- 
#>        \
#>         \
#> 
#>           _____
#>        .'` ,-. `'.
#>       /   ([ ])   \
#>      /.-""`(`)`""-.\
#>       <'```(.)```'>
#>       <'```(.)```'>
#>        <'``(.)``'>
#>    sk   <``\_/``>
#>          `'---'`
````

### Shark


``` r
say("Q: What do you call a solitary shark\nA: A lone shark", by = "shark")
#> 
#>  ______________________________________________________ 
#> < Q: What do you call a solitary shark A: A lone shark >
#>  ------------------------------------------------------ 
#>            \
#>             \
#> 
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
```

### Buffalo


``` r
say("Q: What do you call a single buffalo?\nA: A buffalonely", by = "buffalo")
```

`````
#> 
#>  ________________________________________________________ 
#> < Q: What do you call a single buffalo? A: A buffalonely >
#>  -------------------------------------------------------- 
#>                 \
#>                  \
#> 
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
`````

### Clippy


``` r
say(fortune = 59, by = "clippy")
#> 
#>  ________________________________________________________ 
#> / Let's not kid ourselves: the most widely used piece of \
#> | software for statistics is Excel.  Brian D. Ripley     |
#> | 'Statistical Methods Need Software: A View of          |
#> | Statistical Computing' Opening lecture RSS 2002,       |
#> \ Plymouth September 2002                                /
#>  -------------------------------------------------------- 
#>  \
#>   \
#> 
#>     _
#>    / \
#>    | |
#>    @ @
#>   || ||
#>   || ||
#>   |\_/|
#>   \___/ GB
```

### Yoda


``` r
say("fortune", by = "yoda")
```

### Bats!


``` r
say("hi, i'm a bat", by = "bat")
#> 
#>  _______________ 
#> < hi, i'm a bat >
#>  --------------- 
#>                \
#>                 \
#> 
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
```

See also `bat2`

### Monkey!


``` r
say("fortune", by = "monkey")
#> 
#>  _________________________________________________________ 
#> / Karl Ove Hufthammer: Why not use 'predict.loess' (i.e., \
#> | 'predict' on a loess object) directly? Greg Snow:       |
#> | Because that would be simple, straightforward, and make |
#> | sense, and not require knowledge about less obvious     |
#> | functions.  Karl Ove Hufthammer and Greg Snow R-help    |
#> \ May 2010                                                /
#>  --------------------------------------------------------- 
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
```

### Daemon!


``` r
say("fortune", by = "daemon")
#> 
#>  _______________________________________________________ 
#> / Some people familiar with R describe it as a          \
#> | supercharged version of Microsoft's Excel spreadsheet |
#> | software.  Ashlee Vance in his article "Data Analysts |
#> | Captivated by R's Power" The New York Times January   |
#> \ 2009                                                  /
#>  ------------------------------------------------------- 
#>                  \
#>                   \
#>             ,        ,
#>             /(        )`
#>             \ \___   / |
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
```

### Egret


``` r
say("je ne regrette rien", by = "egret")
#> 
#>  _____________________ 
#> < je ne regrette rien >
#>  --------------------- 
#>         \
#>          \
#> 
#>            _,
#>       -==<' `
#>           ) /
#>          / (_.
#>         |  ,-,`\
#>          \\   \ \
#>           `\,  \ \
#>            ||\  \`|,
#>  jgs      _|| `=`-'
#>          ~~`~`
```


See also `bat2`

### Endless horse

With `endless=FALSE` cause we gotta compile the .md yo


``` r
endless_horse(endless = FALSE)
#> 
#>  ______________ 
#> < Hello world! >
#>  -------------- 
#>     \
#>      \
#> 
#>        ,
#>     _,,)\.~,,._
#>      (()`  ``)\))),,_
#>       |     \ ''((\)))),,_          ____
#>       |6`   |   ''((\())) "-.____.-"    `-.-,
#>       |    .'\    ''))))'                  \)))
#>       |   |   `.     ''                     ((((
#>       \, _)     \/                          |))))
#>        `'        |                          (((((
#>                  \                  |       ))))))
#>                   `|    |           ,\     /((((((
#>                    |   / `-.______.<  \   |  )))))
#>                    |   |  /         `. \  \  ((((
#>                    |  / \ |           `.\  | (((
#>                    \  | | |             )| |  ))
#>                     | | | |             || |  '   [endless.horse]
#>                     | | | |             || |
```

### Using pipes


``` r
library("magrittr")
"I HAD FUN ONCE, IT WAS AWFUL" %>% say("grumpycat")
#> 
#>  ______________________________ 
#> < I HAD FUN ONCE, IT WAS AWFUL >
#>  ------------------------------ 
#>      \
#>       \
#> 
#>       ﾊ _ ﾊ
#>       ಠ X ಠ
```

### I just want the animals!

Okay, hold your endless horses. Just use the function `animal_fetch()` to  select the animal you want by name.


``` r
animal_fetch("clippy")
#> [1] "\n    _\n   / \\\n   | |\n   @ @\n  || ||\n  || ||\n  |\\_/|\n  \\___/ GB"
```

## Meta

* License: MIT
* Please note that this project is released with a [Contributor Code of Conduct][coc]. By participating in this project you agree to abide by its terms.

[coc]: https://github.com/sckott/cowsay/blob/main/.github/CODE_OF_CONDUCT.md
[contrib]: https://github.com/sckott/cowsay/blob/main/.github/CONTRIBUTING.md
