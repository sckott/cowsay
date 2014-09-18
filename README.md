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

### Dependencies:

* `fortunes`
* `jsonlite`

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
## 
##  ----- 
##  2014-09-17 22:49:49 
##  ------ 
##     \   
##      \
##                \`*-.
##                  )  _`-.
##                 .  : `. .
##                 : _   '  
##                 ; *` _.   `*-._
##                 `-.-'          `-.
##                   ;       `       `.
##                   :.       .       \
##                   .\  .   :   .-'   .
##                   '  `+.;  ;  '      :
##                   :  '  |    ;       ;-.
##                   ; '   : :`-:     _.`* ;
##                .*' /  .*' ; .*`- +'  `*'
##                `*-*   `*-*  `*-*'
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
##             /` /`
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
##       `~~~'
## 
```

#### Vary type of output, default calls message()


```r
say("hell no!")
```

```
## 
## 
##  ----- 
##  hell no! 
##  ------ 
##     \   
##      \
##                \`*-.
##                  )  _`-.
##                 .  : `. .
##                 : _   '  
##                 ; *` _.   `*-._
##                 `-.-'          `-.
##                   ;       `       `.
##                   :.       .       \
##                   .\  .   :   .-'   .
##                   '  `+.;  ;  '      :
##                   :  '  |    ;       ;-.
##                   ; '   : :`-:     _.`* ;
##                .*' /  .*' ; .*`- +'  `*'
##                `*-*   `*-*  `*-*'
## 
```



```r
say("hell no!", type="warning")
```

```
## Warning: 
## 
##  ----- 
##  hell no! 
##  ------ 
##     \   
##      \
##                \`*-.
##                  )  _`-.
##                 .  : `. .
##                 : _   '  
##                 ; *` _.   `*-._
##                 `-.-'          `-.
##                   ;       `       `.
##                   :.       .       \
##                   .\  .   :   .-'   .
##                   '  `+.;  ;  '      :
##                   :  '  |    ;       ;-.
##                   ; '   : :`-:     _.`* ;
##                .*' /  .*' ; .*`- +'  `*'
##                `*-*   `*-*  `*-*'
## 
```



```r
say("hell no!", type="string")
```

```
## [1] "\n\n ----- \n hell no! \n ------ \n    \\   \n     \\\n               \\`*-.\n                 )  _`-.\n                .  : `. .\n                : _   '  \n                ; *` _.   `*-._\n                `-.-'          `-.\n                  ;       `       `.\n                  :.       .       \\\n                  .\\  .   :   .-'   .\n                  '  `+.;  ;  '      :\n                  :  '  |    ;       ;-.\n                  ; '   : :`-:     _.`* ;\n               .*' /  .*' ; .*`- +'  `*'\n               `*-*   `*-*  `*-*'\n    "
```


#### Catfacts!!!!

From the [catfacts API](http://catfacts-api.appspot.com/)


```r
say("catfact", "cat")
```

```
## 
## 
##  ----- 
##  Almost 10% of a cat's bones are in its tail, and the tail is used to maintain balance. 
##  ------ 
##     \   
##      \
##                \`*-.
##                  )  _`-.
##                 .  : `. .
##                 : _   '  
##                 ; *` _.   `*-._
##                 `-.-'          `-.
##                   ;       `       `.
##                   :.       .       \
##                   .\  .   :   .-'   .
##                   '  `+.;  ;  '      :
##                   :  '  |    ;       ;-.
##                   ; '   : :`-:     _.`* ;
##                .*' /  .*' ; .*`- +'  `*'
##                `*-*   `*-*  `*-*'
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
##  If there are epigrams, there must be meta-epigrams. 
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
##             /` /`
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
##     U " U
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
## 
```

#### R fortunes


```r
say('fortune','cat')
```

```
## 
## 
##  ----- 
##  Michael Dewey: When I started I found the free documents useful but I made most progress when I bought MASS. I do realise that liking books is a bit last millennium.<x>Thomas Lumley: Very late last millenium, though. "When I were young[er] we didn't have all these fancy yellow books."
##  Michael Dewey and Thomas Lumley
##  about different kinds of documentation for R
##  R-help
##  January 2006 
##  ------ 
##     \   
##      \
##                \`*-.
##                  )  _`-.
##                 .  : `. .
##                 : _   '  
##                 ; *` _.   `*-._
##                 `-.-'          `-.
##                   ;       `       `.
##                   :.       .       \
##                   .\  .   :   .-'   .
##                   '  `+.;  ;  '      :
##                   :  '  |    ;       ;-.
##                   ; '   : :`-:     _.`* ;
##                .*' /  .*' ; .*`- +'  `*'
##                `*-*   `*-*  `*-*'
## 
```
