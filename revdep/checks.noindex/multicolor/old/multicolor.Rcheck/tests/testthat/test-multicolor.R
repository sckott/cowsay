library(crayon)
library(testthat)

context("multicolor")

skip_on_os("windows")

test_that("baseline works", {
  expect_error(
    suppressMessages(
      multi_color(TRUE)
    )
  )

  expect_error(
    suppressMessages(
      multi_color(123)
    )
  )

  expect_error(
    suppressMessages(
      multi_color(colors = crayon::black)
    )
  )

  expect_error(
    suppressMessages(
      multi_color(type = "foo")
    )
  )

  expect_error(
    suppressMessages(
      multi_color(colors = "blue") # need more than 1 color
    )
  )

  expect_error(
    suppressMessages(
      multi_color(
        colors = c(
          "seafoamgreen",
          "green"
        ) # bad colors
      )
    )
  )

  expect_error(
    suppressMessages(
      multi_color(
        colors = c(
          "maroon4", # no maroon5. conspiracy?
          "bisque2"
        ),
        direction = "one"
      ) # bad direction
    )
  )

  expect_error(
    suppressMessages(
      multi_color(colors = c(
        "seafoamgreen",
        "green"
      )) # bad colors
    )
  )

  expect_equal(
    multi_color("one fine day", type = "string"),
    "\033[38;5;196mon\033[39m\033[38;5;214me \033[39m\033[38;5;226mfi\033[39m\033[38;5;46mne\033[39m\033[38;5;21m d\033[39m\033[38;5;129may\033[39m\033[39m"
  )

  expect_equal(
    multi_color("doowap \n do do doooowap \n digga dig dig da doooo wap \n do do dooooooo", type = "string"),
    "\033[38;5;196mdoowa\033[39m\033[38;5;214mp \033[39m\033[39m\n\033[38;5;196m do d\033[39m\033[38;5;214mo doo\033[39m\033[38;5;226moowa\033[39m\033[38;5;46mp \033[39m\033[39m\n\033[38;5;196m digg\033[39m\033[38;5;214ma dig\033[39m\033[38;5;226m dig\033[39m\033[38;5;46m da d\033[39m\033[38;5;21moooo\033[39m\033[38;5;129m wap \033[39m\033[39m\n\033[38;5;196m do d\033[39m\033[38;5;214mo doo\033[39m\033[38;5;226moooo\033[39m\033[38;5;46mo\033[39m\n"
  )

  expect_equal(
    multi_color("Why should Caesar get to stomp around like a giant, while the rest of us try not to get smushed under his big feet? What's so great about Caesar? Brutus is just as cute as Caesar. Brutus is just as smart as Caesar. People totally like Brutus just as much as they like Caesar.", type = "rmd"),
    noquote("<span style='color: #FF0000;'>Why&nbsp;should&nbsp;Caesar&nbsp;get&nbsp;to&nbsp;stomp&nbsp;around&nbsp;like&nbsp;a&nbsp;g</span><span style='color: #FFAF00;'>iant,&nbsp;while&nbsp;the&nbsp;rest&nbsp;of&nbsp;us&nbsp;try&nbsp;not&nbsp;to&nbsp;get&nbsp;smus</span><span style='color: #FFFF00;'>hed&nbsp;under&nbsp;his&nbsp;big&nbsp;feet?&nbsp;What's&nbsp;so&nbsp;great&nbsp;about&nbsp;</span><span style='color: #00FF00;'>Caesar?&nbsp;Brutus&nbsp;is&nbsp;just&nbsp;as&nbsp;cute&nbsp;as&nbsp;Caesar.&nbsp;Bru</span><span style='color: #0000FF;'>tus&nbsp;is&nbsp;just&nbsp;as&nbsp;smart&nbsp;as&nbsp;Caesar.&nbsp;People&nbsp;totally</span><span style='color: #AF00FF;'>&nbsp;like&nbsp;Brutus&nbsp;just&nbsp;as&nbsp;much&nbsp;as&nbsp;they&nbsp;like&nbsp;Caesar.</span>")
  )
})


test_that("colors(), including grays, rainbow, and rbg work", {
  expect_silent(
    suppressMessages(
      multi_color(
        "you're gonna want me for your girl",
        c(
          sample(colors(), 3),
          rgb(0.1, 0.3, 0.5),
          rgb(0.6, 0.4, 0.2),
          "gray3", "#666666"
        )
      )
    )
  )

  expect_silent(
    suppressMessages(
      multi_color(
        "foooooooooooooooooo",
        sample(colors(), 6), # Horizontal can pick one of even even number of colors if text is one line
        direction = "horizontal"
      )
    )
  )

  expect_silent(
    suppressMessages(
      multi_color("asdfjkl;asdfjk;", colors = "rainbow")
    )
  )

  # Multiple of the same colors
  expect_equal(
    multi_color("asdfjkl;asdfjk;",
      colors = c("rainbow", "purple", "purple", "rainbow"),
      type = "string"
    ),
    "\033[38;5;196mas\033[39m\033[38;5;214md\033[38;5;226mf\033[38;5;46mj\033[38;5;21mk\033[38;5;129ml\033[38;5;129m;\033[38;5;129ma\033[38;5;196ms\033[38;5;214md\033[38;5;226mf\033[38;5;46mj\033[38;5;21mk\033[38;5;129m;\033[39m"
  )
})


test_that("integration with cowsay", {
  expect_silent(
    suppressMessages(cowsay::say(
      what = "I'm a rare Irish buffalo",
      by = "buffalo",
      what_color = "pink",
      by_color = c("green", "white", "orange")
    ))
  )

  expect_silent(
    suppressMessages(
      cowsay::say("I'm not crying, you're crying",
        what_color = "green", # green,
        by_color = colors()
      )
    )
  )
})


test_that("logo", {
  expect_message(
    multicolor_logo()
  )
})


test_that("warnings don't get truncated", {
  expect_silent(
    suppressMessages(
      suppressWarnings(multi_color(
        txt = cowsay::animals[["yoda"]],
        type = "warning",
        colors = c("rainbow", "rainbow"),
        recycle_chars = TRUE,
        direction = "horizontal"
      ))
    )
  )

  expect_silent(
    suppressMessages(
      suppressWarnings(multi_color(
        txt = "small text",
        type = "warning"
      ))
    )
  )

  long_text <- rep("lorem ipsum", 681) %>% # longer than max warning length
    stringr::str_c(collapse = " ")

  expect_silent(
    suppressMessages(
      suppressWarnings(multi_color(
        txt = long_text,
        recycle_chars = TRUE,
        type = "warning"
      ))
    )
  )
})


test_that("utils", {

  # Rainbow
  expect_equal(
    insert_rainbow(c("lightsteelblue", "rainbow", "lightsalmon")),
    c(
      "lightsteelblue", "red", "orange", "yellow",
      "green", "blue", "purple", "lightsalmon"
    )
  )

  expect_equal(
    crayon::blue,
    insert_rainbow(crayon::blue)
  )

  # Tags
  expect_equal(
    get_open_close("steelblue2"),
    list(open = "\033[38;5;117m", close = "\033[39m")
  )

  expect_equal(
    get_open_close(rgb(0.2, 0.4, 0.6)),
    list(open = "\033[38;5;67m", close = "\033[39m")
  )

  expect_equal(
    get_open_close("white"),
    list(open = "\033[37m", close = "\033[39m")
  )
})


test_that("utils", {
  expect_error(get_open_close("foo"))

  expect_equal(
    nix_first_newline("foobar\nbaz"),
    "foobarbaz"
  )

  expect_equal(
    nix_first_newline("foobar"),
    "foobar"
  )
})


test_that("crawl works", {
  expect_output(crawl())

  expect_error(
    crawl(pause = -1) # invalid time between chars
  )

  expect_error(
    crawl(runif) # txt has to be character
  )

  skip_if_not(use_color())
  expect_error(
    crawl(colors = c(
      "seafoamgreen",
      "green"
    )) # bad colors
  )
})
