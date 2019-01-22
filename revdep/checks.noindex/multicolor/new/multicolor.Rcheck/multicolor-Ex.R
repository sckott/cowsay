pkgname <- "multicolor"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('multicolor')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
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
##D             c("mediumpurple",
##D               "rainbow",
##D              "cyan3"))
##D 
##D multi_color(colors = c(rgb(0.1, 0.2, 0.5),
##D                        "yellow",
##D                        rgb(0.2, 0.9, 0.1)))
##D 
##D multi_color(
##D   cowsay::animals[["buffalo"]],
##D   c("mediumorchid4", "dodgerblue1", "lemonchiffon1"))
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

multi_color()

multi_color("ahoy")

multi_color("taste the rainbow",
            c("mediumpurple",
              "rainbow",
             "cyan3"))

multi_color(colors = c(rgb(0.1, 0.2, 0.5),
                       "yellow",
                       rgb(0.2, 0.9, 0.1)))

multi_color(
  cowsay::animals[["buffalo"]],
  c("mediumorchid4", "dodgerblue1", "lemonchiffon1"))

multi_color(cowsay:::rms, sample(colors(), 10))

# Mystery Bulgarian animal
multi_color(things[[sample(length(things), 1)]],
            c("white", "darkgreen", "darkred"),
            direction = "horizontal")

# Mystery Italian animal
multi_color(things[[sample(length(things), 1)]],
            c("darkgreen", "white", "darkred"),
            direction = "vertical")



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
nameEx("things")
### * things

flush(stderr()); flush(stdout())

### Name: things
### Title: Things
### Aliases: things
### Keywords: datasets

### ** Examples

things[["turkey"]]
things[["rms"]] %>% cat()
names(things)
multi_color(things[["stretchycat"]])  # To say something, use the cowsay package



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
