cowsay
======

dependency: lubridate

Quick start

```coffee
install_github("cowsay", "SChamberlain")
library(cowsay)
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

### Vary type of output, default calls message()

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