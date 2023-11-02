cowsay 0.9.0
============

* remove `multicolor` temporarily as it is no longer on CRAN (#86)
* use new special "sentinel" "PACKAGE" prefixed with an underscore for the package level manual file (84)
* new animals alligator, goldfish, stegosaurus, whale, and wolf from @harriscw (#79)


cowsay 0.8.2
============

* makes sure to use a suggested package multicolor conditionally throughout the package (tests, examples, vignettes)


cowsay 0.8
==========

### NEW FEATURES

* `say()` parameter `what` loses the fillerama options ("arresteddevelopment", "doctorwho", "dexter", "futurama", "holygrail", "simpsons", "starwars", "loremipsum") because the API is down
* gains two squirrels `squirrel` and `squirrel2` (#74) from @marionlouveaux
* gains chuck norris `chuck` (#62) from @bgreenwell
* the `type` parameter in `say()` gains new option `print`, the default option in non-interactive environments. `type="print"` will `cat()` output (#70) (#72)

### MINOR IMPROVEMENTS

* standardize spacing above first line in animals (#68) (#69)
* add examples to readme of using colors (#73)

### BUG FIXES

* fix to use of colors: if colors can not be used in certain computing environments, tell users that and set colors to `NULL` (#65) (#66)


cowsay 0.7
==========

### NEW FEATURES

* `cowsay` now supports colors via the `multicolor` package from [Amanda Dobbyn](https://github.com/aedobbyn). supports coloring by the thing being said (new `what_color` parameter) or the thing saying it (new `by_color` parameter). supports more than one color. thanks Amanda! (#59) (#61) 


cowsay 0.6
==========

### BUG FIXES

* Fix catfact API usage (#56) (#57)


cowsay 0.5
==========

### NEW FEATURES

* @ateucher added support for the `rmsfact` package, for 
random facts about Richard Stallman (#45)
* turkey animal added by @jeremycg , thanks Jeremy! (#46)
* @LucyMcGowan added a monkey, thanks Lucy! (#47)
* @GuangchuangYu added the BSD daemon, also called "beastie", 
thank so much! (#48) (#49)
* @onertipaday added support for quotes from the http://fillerama.io/
service with quotes from Futurama, Star Wars, Dexter, Monty Python, 
Doctor Who, and more. Thanks Paolo! (#51)

### MINOR IMPROVEMENTS

* removed broken link from readme and pkg (#43) 
thanks @apjanke

### BUG FIXES

* @ateucher fixed problem on windows (#40)
* @florianm fixed a spelling error (#41) (#42)


cowsay 0.4
==========

* First release to CRAN
