
library(tidyverse)

rainbow_colors <- 
  c("red", "orange", "yellow",
    "green", "blue", "purple")

rainbow_dict <- 
  tibble(
    color = rainbow_colors,
    num = 1:length(rainbow_colors)
  )

make_rainbow <- function(who) {
  who <- get_who(who)
  
  whose_line <- 
    tibble(
      full = who
    ) %>% 
    mutate(
      lines = who %>% str_split("\\n") 
    ) %>% 
    unnest(lines) %>% 
    mutate(
      n_char = nchar(lines)
    )
  
  # Find the line with the max number of characters
  max_char <- 
    whose_line %>% 
    filter(n_char == max(n_char)) %>% 
    pull(lines) %>% 
    first()
  
  # Cut into roughly equal buckets
  max_assigned <- 
    cut(seq(nchar(max_char)), length(rainbow_colors),
        include.lowest = TRUE,
        dig.lab = 0) %>%
    as.numeric() %>% 
    round() 
  
  # Assign a color for every possible character index based on the longest line
  dict <- 
    tibble(num = max_assigned) %>% 
    left_join(rainbow_dict, by = "num") %>% 
    mutate(
      char = max_char %>% 
        str_split("") %>% .[[1]],
      rn = row_number()
    )
  
  tbl <- 
    whose_line %>% 
    select(lines) %>% 
    mutate(line_id = row_number()) %>% 
    rowwise() %>% 
    mutate(
      num = seq(nchar(lines)) %>% list(),
      split_chars = lines %>% str_split("")
    ) %>% 
    unnest(split_chars) %>% 
    group_by(line_id) %>% 
    mutate(
      rn = row_number()
    ) %>% 
    # Assign colors by char position
    left_join(dict, by = "rn") %>% 
    select(-lines) %>% 
    rowwise() %>% 
    mutate(
      # Save the function in a list because we can't store a function in a col
      color_fun = crayon::make_style(color) %>% list(),  
      styled = color_fun(split_chars)
    ) %>% 
    ungroup() %>% 
    group_by(line_id) %>% 
    # Re-add a newline at the end of the last character of every line
    mutate(
      res = ifelse(rn == max(rn),
                   styled %>% paste("\n", sep = ""),
                   styled)
    ) 
  
  tbl$res %>% 
    str_c(collapse = "") %>% cat()
}


make_rainbow("yoda")
make_rainbow("rabbit")
make_rainbow("rms")

