cowsay
======

### What is this?

If you are familiar with `cowsay` on the cli, then you know what this is, but for R.  If not, read below.  Why?  Why not?

### Contributors

* Scott Chamberlain
* Tyler Rinker

### Dependencies: 

* lubridate
* fortunes

### Quick start

```coffee
install_github("cowsay", "sckott")
library(cowsay)
```

p.s. or `install_github("sckott/cowsay")` if you have a newer version of devtools

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