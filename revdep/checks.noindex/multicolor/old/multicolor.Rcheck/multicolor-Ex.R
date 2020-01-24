pkgname <- "multicolor"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('multicolor')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("center_string")
### * center_string

flush(stderr()); flush(stdout())

### Name: center_string
### Title: Center all lines of a string relative to console width.
### Aliases: center_string

### ** Examples

triangle_string(starwars_intro, display = TRUE) %>%
  center_string() %>%
  multi_color(direction = "horizontal", recycle_chars = TRUE)



cleanEx()
nameEx("crawl")
### * crawl

flush(stderr()); flush(stdout())

### Name: crawl
### Title: Multi-color crawling text
### Aliases: crawl

### ** Examples

## Not run: 
##D crawl()
##D 
##D crawl("It was a dark and stormy night")
##D 
##D crawl("Taste the rainbow", colors = "rainbow")
##D 
##D crawl(things[["hypnotoad"]], colors = c("purple", "blue", "cyan"),
##D   direction = "horizontal", recycle_chars = TRUE, pause = 0.01)
##D 
##D options("keep.source = FALSE")
##D crawl('\014A long time ago in a galaxy far, far away...
##D It is a period of civil war. Rebel spaceships, striking from a hidden base,
##D have won their first victory against the evil Galactic Empire.')
## End(Not run)



cleanEx()
nameEx("insert_rainbow")
### * insert_rainbow

flush(stderr()); flush(stdout())

### Name: insert_rainbow
### Title: Insert Rainbow
### Aliases: insert_rainbow

### ** Examples


insert_rainbow("rainbow")
insert_rainbow(c("lightsteelblue", "rainbow", "lightsalmon"))



cleanEx()
nameEx("multi_color")
### * multi_color

flush(stderr()); flush(stdout())

### Name: multi_color
### Title: Multi-color text
### Aliases: multi_color

### ** Examples

## Not run: 
##D multi_color()
##D 
##D multi_color("ahoy")
##D 
##D multi_color("taste the rainbow",
##D             c("rainbow", "cyan", "cyan", "rainbow"))
##D multi_color("taste the rainbow",
##D             c("mediumpurple",
##D               "rainbow",
##D              "cyan3"))
##D 
##D multi_color(colors = c(rgb(0.1, 0.2, 0.5),
##D                        "yellow",
##D                        rgb(0.2, 0.9, 0.1)))
##D 
##D multi_color(
##D   things$buffalo,
##D   c("mediumorchid4", "dodgerblue1", "lemonchiffon1"))
##D 
##D # Built-in color palette
##D multi_color(things$cow, colors = palettes$lacroix)
##D 
##D multi_color(cowsay:::rms, sample(colors(), 10))
##D 
##D # Mystery Bulgarian animal
##D multi_color(things[[sample(length(things), 1)]],
##D             c("white", "darkgreen", "darkred"),
##D             direction = "horizontal")
##D 
##D # Mystery Italian animal
##D multi_color(things[[sample(length(things), 1)]],
##D             c("darkgreen", "white", "darkred"),
##D             direction = "vertical")
## End(Not run)



cleanEx()
nameEx("multi_colour")
### * multi_colour

flush(stderr()); flush(stdout())

### Name: multi_colour
### Title: Multi-colour text
### Aliases: multi_colour

### ** Examples

## Not run: 
##D multi_colour()
##D 
##D multi_colour("ahoy")
##D 
##D multi_colour("taste the rainbow",
##D             c("rainbow", "cyan", "cyan", "rainbow"))
##D multi_colour("taste the rainbow",
##D             c("mediumpurple",
##D               "rainbow",
##D              "cyan3"))
##D 
##D multi_colour(colours = c(rgb(0.1, 0.2, 0.5),
##D                        "yellow",
##D                        rgb(0.2, 0.9, 0.1)))
##D 
##D multi_colour(
##D   things$buffalo,
##D   c("mediumorchid4", "dodgerblue1", "lemonchiffon1"))
##D 
##D # Built-in colour palette
##D multi_colour(things$cow, colours = palettes$lacroix)
##D 
##D multi_colour(cowsay:::rms, sample(colours(), 10))
##D 
##D # Mystery Bulgarian animal
##D multi_colour(things[[sample(length(things), 1)]],
##D             c("white", "darkgreen", "darkred"),
##D             direction = "horizontal")
##D 
##D # Mystery Italian animal
##D multi_colour(things[[sample(length(things), 1)]],
##D             c("darkgreen", "white", "darkred"),
##D             direction = "vertical")
## End(Not run)



cleanEx()
nameEx("multicolor_logo")
### * multicolor_logo

flush(stderr()); flush(stdout())

### Name: multicolor_logo
### Title: The multicolor package logo
### Aliases: multicolor_logo

### ** Examples

multicolor_logo()
multicolor_logo(recycle_chars = TRUE)
multicolor_logo(colors = c("red", "blue"))



cleanEx()
nameEx("nix_first_newline")
### * nix_first_newline

flush(stderr()); flush(stdout())

### Name: nix_first_newline
### Title: Remove the first instance of a newline from a string
### Aliases: nix_first_newline

### ** Examples

nix_first_newline("onetwo\nthree\nfour")

# Nothing to remove
nix_first_newline("fivesixseven")



cleanEx()
nameEx("palettes")
### * palettes

flush(stderr()); flush(stdout())

### Name: palettes
### Title: Out-of-the-box Color Palettes
### Aliases: palettes
### Keywords: datasets

### ** Examples


multi_color(things$cat, colors = palettes$lacroix)



cleanEx()
nameEx("things")
### * things

flush(stderr()); flush(stdout())

### Name: things
### Title: Things
### Aliases: things
### Keywords: datasets

### ** Examples

things[["turkey"]]
things[["chuck"]] %>% cat()
cowsay::animals[3] %>% cat()
names(things)
multi_color(things[["stretchycat"]])  # To say something, use the cowsay package



cleanEx()
nameEx("triangle_string")
### * triangle_string

flush(stderr()); flush(stdout())

### Name: triangle_string
### Title: Turn strings into triangle-shaped strings
### Aliases: triangle_string

### ** Examples

triangle_string("hellooooooooooooooooooooooooooooooooooooooooooooooooooo world") %>%
  multi_color()



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
