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
## 2015-01-21 08:31:57 
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
## It is estimated that cats can make over 60 different sounds. 
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
##  I work on the helpdesk for a very large hotel chain. One day, one of our hotels called in reporting that the system wouldn't power on. After going through the usual -- making sure that the correct power button is being pressed, checking to see that it's plugged in, checking the outlet, etc -- I had determined that the power supply had probably failed and needed to be replaced. Just as I was about to end the call and dispatch a technician, the desk clerk stated very matter-of-factly, 'Oh, by the way, lightning hit our hotel last night. Do you think that might have something to do with it?' 
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
## I'd have called them .Rob for the current .rds file format (single object), and .Ros for the current .rda file format (>1 objects). [actually I would have called them .Rob or .Robject, and .Rwk or .Rworkspace but then I noticed that if you had a .Rob you had to have a .Ros so as not to favour one or other of the project originators :)]
##  Barry Rowlingson
##  in a discussion about .rda and .rds formats
##  R-help
##  April 2012 
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
