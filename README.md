cowsay
======

### What is this?

If you are familiar with `cowsay` on the cli, then you know what this is, but for R.  If not, read below.  Why?  Why not?

### Contributors

* Scott Chamberlain
* Tyler Rinker
* Thomas Leeper
* Noam Ross
* Rich FitzJohn

That's right, it takes 5 people to make `cowsay` - it's that hard.

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