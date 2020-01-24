## ----echo=FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE
)

## ----eval=FALSE----------------------------------------------------------
#  install.packages("cowsay")

## ----eval=FALSE----------------------------------------------------------
#  install.packages("devtools")
#  devtools::install_github("sckott/cowsay")

## ------------------------------------------------------------------------
library(cowsay)

## ------------------------------------------------------------------------
sort(names(animals))

## ------------------------------------------------------------------------
cow <- animals[['cow']]
cat(cow)

## ------------------------------------------------------------------------
say("why did the chicken cross the road", "chicken")

## ------------------------------------------------------------------------
say("boo!", "ghost")

## ------------------------------------------------------------------------
say("nope, don't do that", type = "warning")

## ------------------------------------------------------------------------
say('time')

## ------------------------------------------------------------------------
say("hello world", by = "cow")

## ------------------------------------------------------------------------
say("hello world", by = "cow", type = "warning")

## ------------------------------------------------------------------------
say("hello world", by = "cow", type = "string")

## ------------------------------------------------------------------------
library(jsonlite)
library(multicolor)

## ------------------------------------------------------------------------
say(what = "holygrail",
    by = "rabbit",
    what_color = "#FF4500",
    by_color = "red")

## ------------------------------------------------------------------------
say(what = "arresteddevelopment", 
    by = sample(names(animals), 1),
    what_color = rgb(.1, .2, .3),
    by_color = sample(colors(), 5),
    type = "message")

## ------------------------------------------------------------------------
say(what = "arresteddevelopment", 
    by = sample(names(animals), 1),
    what_color = rgb(.1, .2, .3),
    by_color = sample(colors(), 5),
    type = "message")

## ------------------------------------------------------------------------
say(what = "foobar",
    by = "shark",
    what_color = "rainbow",
    by_color = c("rainbow", "rainbow", "rainbow"))

## ------------------------------------------------------------------------
library(crayon)

say(what = "simpsons",
    by = "egret",
    what_color = bgBlue$white$italic,
    by_color = bold$green)

