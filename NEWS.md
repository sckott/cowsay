cowsay 1.0.0
============

### BREAKING CHANGES

* Though this may not cause your code to fail/etc. the bubbles have changed to match that of the original cowsay program created in Perl - both the `say` function and the new `think` function. This is breaking in the sense that the output of `say` is fundamentally different assuming you care about ascii art.
* `say` color args change: `by_color` param now by default is whatever is set for `what_color` - allowing for setting one color for both the quote and the animal. If no colors are supplied behavior is unchanged from previous version. (#85)
* Imports changed. `rmsfact` and `fortunes` were previously Imports but are now Suggests because they are not in fact needed for the main use case of the package. Simply load them if you need them and this package helps when needed. 

### NEW FEATURES

* new function `think()` to duplicate what cowthink function does with command line cowsay - different bubble sides and tail (see examples) (#93)
* A user (@oganm) suggested removing the speech bubble from the ascii art - and we agree! `say` has been refactored, now using separate new functions `bubble_say`/`bubble_think` and `bubble_tail` to construct the quote/speech bubble and its tail. The tail from the bubble to the animal has changed position so that it attempts to be at a position that makes sense for the specific animal. You can use these separate new functions yourself to manually do what `say` and `think` do. See the docs for details (`?bubble_say`/`?bubble_tail`) (#67)
* New special variants of cows added to match the original cowsay command line flags -b, -d, -g, -s, -t, -w, and -y, which refer to Borg, dead, greedy, sleepy, tired, wired, and young appearance modes for the cow, respectively. Instead of adding a new parameter for this (trying to avoid parameter bloat) - and since this is just for cow - you can get these cow variants by supplying for animal cow + dead as "cow_dead" for example, instead of just "cow".

### MINOR IMPROVEMENTS

* Added notes about history of cowsay in readme (#94)
* remove `multicolor` package for good as it's not coming back to CRAN (#90)

### BUG FIXES

* stegosaurus fixed! apparently the ascii art for the stegosaurus in this package was a diplodocus. thanks @stochastics ! (#88)


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
