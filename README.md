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
##  -------------- 
## 2014-09-18 07:41:40 
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
## Warning: 
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
## Warning: Unexpected Content-Type: application/javascript
```

```
## 
##  -------------- 
## It may take as long as 2 weeks for a kitten to be able to hear well.  Their eyes usually open between 7 and 10 days, but sometimes it happens in as little as 2 days. 
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
##  Satire is what closes Saturday night.-- George Kaufman 
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
##  -------------- 
## If we told you all of R's secrets, we'd have to kill you.
##  Duncan Murdoch
##  answering a request for too detailed documentation
##  R-help
##  October 2011 
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
