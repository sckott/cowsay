## ----echo=FALSE---------------------------------------------------------------
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE
)

## ----eval=FALSE---------------------------------------------------------------
#  install.packages("cowsay")

## ----eval=FALSE---------------------------------------------------------------
#  install.packages("devtools")
#  devtools::install_github("sckott/cowsay")

## -----------------------------------------------------------------------------
library(cowsay)

## -----------------------------------------------------------------------------
sort(names(animals))

## -----------------------------------------------------------------------------
cow <- animals[['cow']]
cat(cow)

## -----------------------------------------------------------------------------
say("why did the chicken cross the road", "chicken")

## -----------------------------------------------------------------------------
say("boo!", "ghost")

## -----------------------------------------------------------------------------
say("nope, don't do that", type = "warning")

## -----------------------------------------------------------------------------
say('time')

## -----------------------------------------------------------------------------
say("hello world", by = "cow")

## -----------------------------------------------------------------------------
say("hello world", by = "cow", type = "warning")

## -----------------------------------------------------------------------------
say("hello world", by = "cow", type = "string")

## -----------------------------------------------------------------------------
library(jsonlite)
library(multicolor)

## -----------------------------------------------------------------------------
say(what = "fortune",
    by = "rabbit",
    what_color = "#FF4500",
    by_color = "red")

## -----------------------------------------------------------------------------
# make a vector of animals safe to use on windows in case vignette built on windows
not_on_windows <- c('shortcat','longcat','fish','signbunny','stretchycat',
  'anxiouscat','longtailcat','grumpycat','mushroom')
names_safe <- names(animals)[!names(animals) %in% not_on_windows]

## -----------------------------------------------------------------------------
say(what = "fortune", 
    by = sample(names_safe, 1),
    what_color = rgb(.1, .2, .3),
    by_color = sample(colors(), 5),
    type = "message")

## -----------------------------------------------------------------------------
say(what = "fortune", 
    by = sample(names_safe, 1),
    what_color = rgb(.1, .2, .3),
    by_color = sample(colors(), 5),
    type = "message")

## -----------------------------------------------------------------------------
say(what = "foobar",
    by = "shark",
    what_color = "rainbow",
    by_color = c("rainbow", "rainbow", "rainbow"))

## -----------------------------------------------------------------------------
library(crayon)

say(what = "fortune",
    by = "egret",
    what_color = bgBlue$white$italic,
    by_color = bold$green)

