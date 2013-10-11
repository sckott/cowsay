\name{say}
\alias{say}
\title{Sling messages and warnings with flair}
\usage{
  say(what = "Hello world!", by = "cow", type = "message")
}
\arguments{
  \item{what}{What do you want to say?}

  \item{by}{Type of thing, one of cow, chicken, poop}

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
say("ain't that some shit")
say("ain't that some shit", "chicken")
say("ain't that some shit", "poop")
say("ain't that some shit", "poop")
say("ain't that some shit", "poop", "warning")
say("ain't that some shit", "poop", "string")
}

