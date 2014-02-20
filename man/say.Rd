\name{say}
\alias{say}
\title{Sling messages and warnings with flair}
\usage{
say(what = "Hello world!", by = "cow", type = "message")
}
\arguments{
  \item{what}{What do you want to say?}

  \item{by}{Type of thing, one of cow, chicken, poop, cat,
  ant, pumpkin, ghost, spider, rabbit, pig, snowman, or
  frog}

  \item{type}{One of message (default), warning, or string
  (returns string)}
}
\description{
Sling messages and warnings with flair
}
\examples{
say()
say("what")
say('time')
say('time', "poop")
say("who you callin chicken", "chicken")
say("ain't that some shit", "poop")
say("ain't that some shit", "poop", "warning")
say("ain't that some shit", "poop", "string")
say("icanhazpdf?", "cat")
say("boo!", "pumpkin")
say("hot diggity", "frog")
say("fortune", "spider")

# Vary type of output, default calls message()
say("hell no!")
say("hell no!", type="warning")
say("hell no!", type="string")

# Using fortunes
say(what="fortune")

# Using catfacts
say("catfact", "cat")
}

