cowsay
======



[![cran checks](https://cranchecks.info/badges/worst/cowsay)](https://cranchecks.info/pkgs/cowsay)
[![Build Status](https://travis-ci.org/sckott/cowsay.svg?branch=master)](https://travis-ci.org/sckott/cowsay)
[![Build status](https://ci.appveyor.com/api/projects/status/frfd77fcaxib2qkr/branch/master)](https://ci.appveyor.com/project/sckott/cowsay/branch/master)
[![rstudio mirror downloads](http://cranlogs.r-pkg.org/badges/cowsay)](https://github.com/metacran/cranlogs.app)
[![cran version](http://www.r-pkg.org/badges/version/cowsay)](https://cran.r-project.org/package=cowsay)

### What is this?

If you are familiar with `cowsay` on the cli, then you know what this is, but for R.  If not, read below.  Why?  Why not?

### Contributors (alphebetical)




 * Amanda Dobbyn
 * Andreas Brandmaier
 * Andy Teucher
 * Carson Sievert
 * Franz-Sebastian Krah
 * Guangchuang Yu
 * Karl Broman
 * Kiyoko Gotanda
 * Lucy D'Agostino McGowan
 * Noam Ross
 * Paolo Sonego
 * Philipp Boersch-Supan
 * Rich FitzJohn
 * Scott Chamberlain
 * Thomas Leeper
 * Tyler Rinker

That's right, it takes 16 people to make `cowsay` - it's that hard.

### Contributing

See [CONTRIBUTING.md](.github/CONTRIBUTING.md)

### Where to find ASCII animal art

Sources to look in:

* http://www.chris.com/ascii/ - again, this person only collects them - no mention of license, permissions, etc.
* http://www.asciiworld.com/

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


```r
install.packages("cowsay")
```

Dev version


```r
install.packages("devtools")
devtools::install_github("sckott/cowsay")
```


```r
library("cowsay")
```

### The animals


```r
sort(names(animals))
#>  [1] "ant"          "anxiouscat"   "bat"          "bat2"        
#>  [5] "behindcat"    "bigcat"       "buffalo"      "cat"         
#>  [9] "chicken"      "clippy"       "cow"          "daemon"      
#> [13] "duck"         "duckling"     "egret"        "endlesshorse"
#> [17] "facecat"      "fish"         "frog"         "ghost"       
#> [21] "grumpycat"    "hypnotoad"    "longcat"      "longtailcat" 
#> [25] "monkey"       "mushroom"     "owl"          "pig"         
#> [29] "poop"         "pumpkin"      "rabbit"       "shark"       
#> [33] "shortcat"     "signbunny"    "smallcat"     "snowman"     
#> [37] "spider"       "stretchycat"  "trilobite"    "turkey"      
#> [41] "yoda"
```

### Say Something


```r
say('time')
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
#> 
#>  -------------- 
#> 2018-11-16 09:40:29 
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
```


```r
say("ain't that some shit", "chicken")
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
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
```

Add some color: 


```r
library(multicolor)
#> Colors cannot be applied in this environment. Please use another application, such as RStudio or a color-enabled terminal.
library(crayon)
```



```r
say("boo!", "ghost", 
    what_color = "cyan", by_color = "saddlebrown")
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
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
```


```r
say("I love hooo you are!", "owl", 
    what_color = rgb(0, 1, 1), by_color = "#FF0000")
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
#> 
#>  ----- 
#> I love hooo you are! 
#>  ------ 
#>     \   
#>      \  
#>       \
#>        /\___/\
#>        {o}{o}|
#>        \ v  /|
#>        |    \ \
#>         \___/_/       [ab] 
#>           | |
```

String styles together [crayon-style](https://github.com/r-lib/crayon#styles):


```r
say(what = "rms", by = "rms", 
        what_color = yellow$bgMagenta$bold,
        by_color = cyan$italic)
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
#> 
#> 
#>  ----- 
#> Richard Stallman is in fact also a little sad that Steve Jobs is gone because it has diminished the size of the loyal opposition. 
#>  ------ 
#>     \   
#>      \
#>                     @@@@@@ @
#>                   @@@@     @@
#>                  @@@@ =   =  @@ 
#>                 @@@ @ _   _   @@ 
#>                  @@@ @(0)|(0)  @@ 
#>                 @@@@   ~ | ~   @@
#>                 @@@ @  (o1o)    @@
#>                @@@    #######    @
#>                @@@   ##{+++}##   @@
#>               @@@@@ ## ##### ## @@@@
#>               @@@@@#############@@@@
#>              @@@@@@@###########@@@@@@
#>             @@@@@@@#############@@@@@
#>             @@@@@@@### ## ### ###@@@@
#>              @ @  @              @  @
#>                @                    @
```

This doesn't preclude you from adding extra crayon colors to your `what` string directly.


```r
say(what = paste0("hello ", crayon::yellow("there "), crayon::underline("world")), 
    by = "trilobite", 
    what_color = bgBlue$cyan$italic,
    by_color = "thistle")  # Don't ask me why "thistle" is pink/purple
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
#> 
#>   
#>  -------------- 
#> hello there world 
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
```


Multiple colors are also possible (uses the [`multicolor`](https://github.com/aedobbyn/multicolor) package):


```r
say(what = "I'm a rare Irish buffalo",
    by = "buffalo", 
    what_color = c("salmon2", "darkcyan", "salmon2", "darkcyan"),
    by_color = c("green", "white", "orange"))
#>  --------------
#> I'm a rare Irish buffalo
#> 
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
```


### Vary type of output, default calls message()


```r
say("hell no!")
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
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
```



```r
say("hell no!", type="warning")
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
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
```



```r
say("hell no!", type="string")
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
#> [1] "\n -------------- \nhell no! \n --------------\n    \\\n      \\\n        \\\n            |\\___/|\n          ==) ^Y^ (==\n            \\  ^  /\n             )=*=(\n            /     \\\n            |     |\n           /| | | |\\\n           \\| | |_|/\\\n      jgs  //_// ___/\n               \\_)\n  "
```


### Catfacts!!!!

From the catfacts API  at <https://catfact.ninja>


```r
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
```

### Long cat

From the [a Boing Boing tweet on 2014-05-10](https://twitter.com/BoingBoing/status/465170473194512384)


```r
say("it's caturday", "longcat")
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
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
```

### Grumpy cat


```r
say('NO!', by='grumpycat')
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
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
```


```r
say('WOKE UP TODAY, IT WAS TERRIBLE', by='grumpycat')
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
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
```


```r
say('I HAD FUN ONCE, IT WAS AWFUL', by='grumpycat')
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
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
```

### Bunny Holding a sign


```r
say(by='signbunny')
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
#> 
#>  -------------- 
#> Hello world! 
#>  --------------
#> (\__/) ||
#> (•ㅅ•) ||
#> /   づ
#>           [nosig]
#> 
```

### Fish


```r
say(by='fish')
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
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
```

### R fortunes


```r
say('fortune','cat')
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
#> 
#>  -------------- 
#> As to whether you can do a Lilliefors test for several groups, that depends entirely on your ability to understand what the underlying question would be (see Adams D 1979).
#>  Knut M. Wittkowski
#>  R-help
#>  February 2004 
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
```

You can also pick a particular fortune by number or regex search - if the `fortune` parameter is not `NULL` you don't have pass anything to the `what` parameter (the 1st parameter)


```r
say(fortune=100)
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
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
```


```r
say(fortune='whatever')
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
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
```

### Trilobite


```r
say("Hi there :)", by='trilobite')
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
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
```

### Shark


```r
say('Q: What do you call a solitary shark\nA: A lone shark', by='shark')
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
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
```

### Buffalo


```r
say('Q: What do you call a single buffalo?\nA: A buffalonely', by='buffalo')
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
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
```

### Clippy


```r
say(fortune=59, by="clippy")
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
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
```

### Yoda


```r
say("starwars", by = "yoda")
```

### Bats!


```r
say("hi, i'm a bat", by="bat")
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
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
```

See also `bat2`

### Monkey!


```r
say("fortune", by = "monkey")
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
#> 
#> 
#>  ------------- 
#> Overall, SAS is about 11 years behind R and S-Plus in statistical capabilities (last year it was about 10 years behind) in my estimation.
#>  Frank Harrell (SAS User, 1969-1991)
#>  R-help
#>  September 2003 
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
```

### Daemon!


```r
say("fortune", by = "daemon")
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
#> 
#>  ----- 
#> The only people who should use the assign function are those who fully understand why you should never use the assign function.
#>  Greg Snow
#>  R-help
#>  July 2009 
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
```

### Egret


```r
say("je ne regrette rien", by = "egret")
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
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
```


See also `bat2`

### Endless horse


```r
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
```

### Using pipes


```r
library("magrittr")
"I HAD FUN ONCE, IT WAS AWFUL" %>% say('grumpycat')
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
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
```

### I just want the animals!

Okay, hold your endless horses. Just use the exported vector `animals`, and you can select the animal you want by name.


```r
animals['clippy']
#>                                                                                                                      clippy 
#> "\n\n ----- \n%s \n ------ \n    \\   \n     \\\n   __\n   / \\\n   | |\n   @ @\n  || ||\n  || ||\n  |\\_/|\n  \\___/ GB\n"
```

## Meta

* License: MIT
* Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.
