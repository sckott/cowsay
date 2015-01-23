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

That's right, it takes 6 people to make `cowsay` - it's that hard.

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


```r
say('time')
```

```
## 
##  -------------- 
## 2015-01-22 23:49:37 
##  --------------
##     \
##       \
##         \
##             |\___/|
##           ==) ^Y^ (==
##             \  ^  /
##              )=*=(
##             /     \
##             |     |
##            /| | | |\
##            \| | |_|/\
##       jgs  //_// ___/
##                \_)
## 
```


```r
say("ain't that some shit", "chicken")
```

```
## 
## 
##  ----- 
##  ain't that some shit 
##  ------ 
##     \   
##      \
##          _
##        _/ }
##       `>' \
##       `|   \
##        |   /'-.     .-.
##         \'     ';`--' .'
##          \'.    `'-./
##           '.`-..-;`
##             `;-..'
##             _| _|
##             /` /` [nosig]
## 
```


```r
say("boo!", "ghost")
```

```
## 
## 
##  ----- 
##  boo! 
##  ------ 
##     \   
##      \
##      .-.
##     (o o)
##     | O \
##      \   \
##       `~~~' [nosig]
## 
```

#### Vary type of output, default calls message()


```r
say("hell no!")
```

```
## 
##  -------------- 
## hell no! 
##  --------------
##     \
##       \
##         \
##             |\___/|
##           ==) ^Y^ (==
##             \  ^  /
##              )=*=(
##             /     \
##             |     |
##            /| | | |\
##            \| | |_|/\
##       jgs  //_// ___/
##                \_)
## 
```



```r
say("hell no!", type="warning")
```

```
## Warning in say("hell no!", type = "warning"): 
##  -------------- 
## hell no! 
##  --------------
##     \
##       \
##         \
##             |\___/|
##           ==) ^Y^ (==
##             \  ^  /
##              )=*=(
##             /     \
##             |     |
##            /| | | |\
##            \| | |_|/\
##       jgs  //_// ___/
##                \_)
## 
```



```r
say("hell no!", type="string")
```

```
## [1] "\n -------------- \nhell no! \n --------------\n    \\\n      \\\n        \\\n            |\\___/|\n          ==) ^Y^ (==\n            \\  ^  /\n             )=*=(\n            /     \\\n            |     |\n           /| | | |\\\n           \\| | |_|/\\\n      jgs  //_// ___/\n               \\_)\n  "
```


#### Catfacts!!!!

From the [catfacts API](http://catfacts-api.appspot.com/)


```r
say("catfact", "cat")
```

```
## 
##  -------------- 
## On September 6,1950, a four-month-old kitten belonging to Josephine Aufdenblatten of Geneva, Switzerland followed a group of climbers to the top of the 14,691 -ft. Matterhorn in the Alps. 
##  --------------
##     \
##       \
##         \
##             |\___/|
##           ==) ^Y^ (==
##             \  ^  /
##              )=*=(
##             /     \
##             |     |
##            /| | | |\
##            \| | |_|/\
##       jgs  //_// ___/
##                \_)
## 
```

#### Random quote

From the [iheartquotes API](http://iheartquotes.com/api)


```r
say("iheart", "chicken")
```

```
## 
## 
##  ----- 
##  'It took me fifteen years to discover that I had no talent for writing,but I couldn't give up because by that time I was too famous.'-- Robert Benchly 
##  ------ 
##     \   
##      \
##          _
##        _/ }
##       `>' \
##       `|   \
##        |   /'-.     .-.
##         \'     ';`--' .'
##          \'.    `'-./
##           '.`-..-;`
##             `;-..'
##             _| _|
##             /` /` [nosig]
## 
```

#### Long cat

From the [a Boing Boing tweet on 2014-05-10](https://twitter.com/BoingBoing/status/465170473194512384)


```r
say("it's caturday", "longcat")
```

```
## 
## 
##  ----- 
##  it's caturday 
##  ------ 
##     \   
##      \
##     .ﾊ,,ﾊ
##     ( ﾟωﾟ)
##     |つ  つ
##     |    |
##     |    |
##     |    |
##     |    |
##     |    |
##     |    |
##     |    |
##     |    |
##     |    |
##     |    |
##     |    |
##     |    |
##     |    |
##     |    |
##     |    |
##     |    |
##     |    |
##     |    |
##     U "  U
##         [BoingBoing]
## 
```

#### Grumpy cat


```r
say('NO!', by='grumpycat')
```

```
## 
##    
##  -------------- 
##  NO! 
##  --------------
##     \
##       \
##         \
##       ﾊ _ ﾊ
##       ಠ X ಠ
## 
```


```r
say('WOKE UP TODAY, IT WAS TERRIBLE', by='grumpycat')
```

```
## 
##    
##  -------------- 
##  WOKE UP TODAY, IT WAS TERRIBLE 
##  --------------
##     \
##       \
##         \
##       ﾊ _ ﾊ
##       ಠ X ಠ
## 
```


```r
say('I HAD FUN ONCE, IT WAS AWFUL', by='grumpycat')
```

```
## 
##    
##  -------------- 
##  I HAD FUN ONCE, IT WAS AWFUL 
##  --------------
##     \
##       \
##         \
##       ﾊ _ ﾊ
##       ಠ X ಠ
## 
```

#### Bunny Holding a sign


```r
say(by='signbunny')
```

```
## 
##  -------------- 
## Hello world! 
##  --------------
## (\__/) ||
## (•ㅅ•) ||
## /   づ
##           [nosig]
## 
```

#### Fish


```r
say(by='fish')
```

```
## 
## 
##  ----- 
##  Hello world! 
##  ------ 
##     \   
##      \
##   ><((((º>  ><((((º>  ><((((º>  ><((((º>  ><((((º>
##       Kiyoko Gotanda
## 
```

#### R fortunes


```r
say('fortune','cat')
```

```
## 
##  -------------- 
## We also have huge amounts of work going into calibration transfer, i.e. making quantitative predictive models work on a different instrument. This is always a whole lot of work, and for some fields of problems at the moment considered basically impossible even between two instruments of the same model and manufacturer.
##  Claudia Beleites
##  in a discussion about publication bias and scientific validity
##  R-help
##  January 2011 
##  --------------
##     \
##       \
##         \
##             |\___/|
##           ==) ^Y^ (==
##             \  ^  /
##              )=*=(
##             /     \
##             |     |
##            /| | | |\
##            \| | |_|/\
##       jgs  //_// ___/
##                \_)
## 
```

#### Trilobite


```r
say("Hi there :)", by='trilobite')
```

```
## 
##   
##  -------------- 
## Hi there :) 
##  --------------
##     \
##       \
##         \
##           _____
##        .'` ,-. `'.
##       /   ([ ])   \
##      /.-""`(`)`""-.\
##       <'```(.)```'>
##       <'```(.)```'>
##        <'``(.)``'>
##    sk   <``\_/``>
##          `'---'`
## 
```

#### Shark


```r
say('Q: What do you call a solitary shark\nA: A lone shark', by='shark')
```

```
## 
##     
##  -------------- 
## Q: What do you call a solitary shark
## A: A lone shark 
##  --------------
##     \
##       \
##         \
##               /""-._
##               .       '-,
##                :          '',
##                 ;      *     '.
##                  ' *         () '.
##                    \               \
##                     \      _.---.._ '.
##                     :  .' _.--''-''  \ ,'
##         .._           '/.'             . ;
##         ; `-.          ,                \'
##          ;   `,         ;              ._\
##           ;    \     _,-'                ''--._
##           :    \_,-'                          '-._
##           \ ,-'                       .          '-._
##           .'         __.-'';            \...,__       '.
##         .'      _,-'        \              \   ''--.,__  '\
##         /    _,--' ;         \              ;           \^.}
##         ;_,-' )     \  )\      )            ;
##              /       \/  \_.,-'             ;
##             /                              ;
##          ,-'  _,-'''-.    ,-.,            ;      PFA
##       ,-' _.-'        \  /    |/'-._...--'
##      :--``             )/
##   '
## 
```

#### Buffalo


```r
say('Q: What do you call a single buffalo?\nA: A buffalonely', by='buffalo')
```

```
## 
##     
##  -------------- 
## Q: What do you call a single buffalo?
## A: A buffalonely 
##  --------------
##     \
##       \
##         \
##                    _.-````'-,_
##          _,.,_ ,-'`           `'-.,_
##        /)     (                   '``-.
##       ((      ) )                      `\
##         \)    (_/                        )\
##         |       /)           '    ,'    / \
##         `\    ^'            '     (    /  ))
##           |      _/\ ,     /    ,,`\   (  "`
##           \Y,   |   \  \  | ````| / \_ \
##             `)_/      \  \  )    ( >  ( >
##                        \( \(     |/   |/
##           mic & dwb  /_(/_(    /_(  /_(
## 
```

