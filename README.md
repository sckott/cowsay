cowsay
======



[![Build Status](https://api.travis-ci.org/sckott/cowsay.png)](https://travis-ci.org/sckott/cowsay)
[![Build status](https://ci.appveyor.com/api/projects/status/frfd77fcaxib2qkr/branch/master)](https://ci.appveyor.com/project/sckott/cowsay/branch/master)

### What is this?

If you are familiar with `cowsay` on the cli, then you know what this is, but for R.  If not, read below.  Why?  Why not?

### Contributors

* Scott Chamberlain
* Tyler Rinker
* Thomas Leeper
* Noam Ross
* Rich FitzJohn
* Kiyoko Gotanda
* Carson Sievert
* Andy Teucher
* Karl Broman
* Franz-Sebastian Krah

That's right, it takes 10 people to make `cowsay` - it's that hard.

### Where to find ASCII animal art

Sources to look in:

* http://www.retrojunkie.com/asciiart/asciiart.htm - apprently this person just collects ascii art, doesn't make any,
* http://www.chris.com/ascii/ - again, this person only collects them - no mention of license, permissions, etc.
* http://www.asciiworld.com/

Permissions

In the [ascii art mailing list](https://groups.google.com/forum/#!forum/alt.ascii-art) they say:

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

Asciicast: [https://asciinema.org/a/7745](https://asciinema.org/a/7745)

### Quick start


```r
install.packages("devtools")
devtools::install_github("sckott/cowsay")
```


```r
library("cowsay")
```

#### The animals


```r
sort(names(animals))
#>  [1] "ant"          "anxiouscat"   "bat"          "bat2"        
#>  [5] "behindcat"    "bigcat"       "buffalo"      "cat"         
#>  [9] "chicken"      "clippy"       "cow"          "endlesshorse"
#> [13] "facecat"      "fish"         "frog"         "ghost"       
#> [17] "grumpycat"    "hypnotoad"    "longcat"      "longtailcat" 
#> [21] "mushroom"     "pig"          "poop"         "pumpkin"     
#> [25] "rabbit"       "shark"        "shortcat"     "signbunny"   
#> [29] "smallcat"     "snowman"      "spider"       "stretchycat" 
#> [33] "trilobite"    "yoda"
```

#### Say Something


```r
say('time')
#> 
#>  -------------- 
#> 2015-10-07 17:47:12 
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


```r
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
```

#### Vary type of output, default calls message()


```r
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
```



```r
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
```



```r
say("hell no!", type="string")
#> [1] "\n -------------- \nhell no! \n --------------\n    \\\n      \\\n        \\\n            |\\___/|\n          ==) ^Y^ (==\n            \\  ^  /\n             )=*=(\n            /     \\\n            |     |\n           /| | | |\\\n           \\| | |_|/\\\n      jgs  //_// ___/\n               \\_)\n  "
```


#### Catfacts!!!!

From the [catfacts API](http://catfacts-api.appspot.com/)


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

#### Random quote

From the iheartquotes API (http://iheartquotes.com/api)

> DOESN'T WORK RIGHT NOW


```r
say("iheart", "chicken")
```

#### Long cat

From the [a Boing Boing tweet on 2014-05-10](https://twitter.com/BoingBoing/status/465170473194512384)


```r
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
```

#### Grumpy cat


```r
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
```


```r
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
```


```r
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
```

#### Bunny Holding a sign


```r
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
```

#### Fish


```r
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
```

#### R fortunes


```r
say('fortune','cat')
#> 
#>  -------------- 
#> I would heed the warnings and diagnostics. They are there for a reason. The Ostrich algorithm does not help you.
#>  Dirk Eddelbuettel
#>  in reply to a questioner who said he had not run R CMD check because he suspected other problems would be found
#>  Stackoverflow
#>  November 2013 
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
```

#### Trilobite


```r
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
```

#### Shark


```r
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
```

#### Buffalo


```r
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
```

#### Clippy


```r
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
```

#### Yoda


```r
say("You must unlearn what you have learned", by="yoda")
#> 
#> 
#> 
#>  ----- 
#> You must unlearn what you have learned 
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
```

#### Bats!


```r
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
```

See also `bat2`

#### Endless horse


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

#### Using pipes


```r
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
```

#### I just want the animals!

Okay, hold your endless horses. Just use the exported vector `animals`, and you can select the animal you want by name.


```r
animals['clippy']
#>                                                                                                                      clippy 
#> "\n\n ----- \n%s \n ------ \n    \\   \n     \\\n   __\n   / \\\n   | |\n   @ @\n  || ||\n  || ||\n  |\\_/|\n  \\___/ GB\n"
```
