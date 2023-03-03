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




cleanEx()
nameEx("multi_colour")
### * multi_colour

flush(stderr()); flush(stdout())

### Name: multi_colour
### Title: Multi-colour text
### Aliases: multi_colour

### ** Examples




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
multi_color(things[["stretchycat"]]) # To say something, use the cowsay package



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
