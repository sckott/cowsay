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
* You?

That's right, it takes 6 people to make `cowsay` - it's that hard.

### Dependencies:

* fortunes
* RJSONIO

### Quick watch start

Asciicast: [https://asciinema.org/a/7745](https://asciinema.org/a/7745)

### Quick start

```coffee
library("devtools")
install_github("sckott/cowsay")
library("cowsay")
```

```coffee
say('time')
```

```
 -----
 2013-10-10 17:11:53
 ------
    \   ^__^
     \  (oo)\ ________
        (__)\         )\ /\
             ||------w|
             ||      ||
```

```coffee
say("ain't that some shit", "chicken")
```

```
 -----
 ain't that some shit
 ------
    \
     \  
         _
       _/ }
      `>' \
      `|   \
       |   /'-.     .-.
        \'     ';`--' .'
         \'.    `'-./
          '.`-..-;`
            `;-..'
            _| _|
            /` /`
```


```coffee
say("boo!", "ghost")
```

```
 -----
 boo!
 ------
    \
     \  
     .-.
    (o o)
    | O \
     \   \
      `~~~'

```

#### Vary type of output, default calls message()

```coffee
say("hell no!")
```

```
 -----
 hell no!
 ------
    \   ^__^
     \  (oo)\ ________
        (__)\         )\ /\
             ||------w|
             ||      ||
```

```coffee
say("hell no!", type="warning")
```

```
Warning message:
In say("hell no!", type = "warning") :
 -----
 hell no!
 ------
    \   ^__^
     \  (oo)\ ________
        (__)\         )\ /\
             ||------w|
             ||      ||
```

```coffee
say("hell no!", type="string")
```

```
[1] "\n ----- \n hell no! \n ------ \n    \\   ^__^ \n     \\  (oo)\\ ________ \n        (__)\\         )\\ /\\ \n             ||------w|\n             ||      ||"
```

#### Catfacts!!!!

From the [catfacts API](http://catfacts-api.appspot.com/)

```coffee
say("catfact", "cat")
```

```coffee
 -----
 The average cat food meal is the equivalent to about five mice.
 ------
    \
     \  
               \`*-.
                 )  _`-.
                .  : `. .
                : _   '
                ; *` _.   `*-._
                `-.-'          `-.
                  ;       `       `.
                  :.       .       \
                  .\  .   :   .-'   .
                  '  `+.;  ;  '      :
                  :  '  |    ;       ;-.
                  ; '   : :`-:     _.`* ;
               .*' /  .*' ; .*`- +'  `*'
               `*-*   `*-*  `*-*'

```

#### Random quote

From the [iheartquotes API](http://iheartquotes.com/api)

```coffee
say("iheart", "chicken")
```

```coffee
  -----
 The pyramids will not last a moment compared with the daisy.-- D. H. Laurence
 ------
    \
     \
         _
       _/ }
      `>' \
      `|   \
       |   /'-.     .-.
        \'     ';`--' .'
         \'.    `'-./
          '.`-..-;`
            `;-..'
            _| _|
            /` /`
```

#### Long cat

From the [a Boing Boing tweet on 2014-05-10](https://twitter.com/BoingBoing/status/465170473194512384)

```coffee
say("it's caturday", "longcat")
```

```coffee
 -----
 it's caturday
 ------
    \
     \
    .ﾊ,,ﾊ
    ( ﾟωﾟ)
    |つ　つ
    |　　|
    |　　|
    |　　|
    |　　|
    |　　|
    |　　|
    |　　|
    |　　|
    |　　|
    |　　|
    |　　|
    |　　|
    |　　|
    |　　|
    |　　|
    |　　|
    |　　|
    |　　|
    Ｕ"Ｕ
```

#### Fish

```coffee
say(by='fish')
```

```coffee
 -----
 Hello world!
 ------
    \
     \
  ><((((º>  ><((((º>  ><((((º>  ><((((º>  ><((((º>
```

#### R fortunes

```coffee
say('fortune','cat')
```

```coffee
 -----
 Nothing exceeds like Excel.
 Roger Koenker
 in reply to a question why it takes so long to paste 19,000 lines of R code from Excel into R
 R-help
 October 2008
 ------
    \
     \
               \`*-.
                 )  _`-.
                .  : `. .
                : _   '
                ; *` _.   `*-._
                `-.-'          `-.
                  ;       `       `.
                  :.       .       \
                  .\  .   :   .-'   .
                  '  `+.;  ;  '      :
                  :  '  |    ;       ;-.
                  ; '   : :`-:     _.`* ;
               .*' /  .*' ; .*`- +'  `*'
               `*-*   `*-*  `*-*'
```
