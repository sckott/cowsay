
library(tidyverse)

rainbow_colors <- 
  c("red", "orange", "yellow",
    "green", "blue", "purple")

rainbow_dict <- 
  tibble(
    color = rainbow_colors,
    num = 1:length(rainbow_colors)
  )

make_rainbow <- function(a) {
  a <- animals[[a]]
  
  a_lines <- 
    tibble(
      full = a
    ) %>% 
    mutate(
      lines = a %>% str_split("\\n") 
    ) %>% 
    unnest(lines) %>% 
    mutate(
      n_char = nchar(lines)
    )
  
  # Find the line with the max number of characters
  max_char <- 
    a_lines %>% 
    filter(n_char == max(n_char)) %>% 
    pull(lines) %>% 
    first()
  
  max_assigned <- 
    cut(seq(nchar(max_char)), length(rainbow_colors),
        include.lowest = TRUE,
        dig.lab = 0) %>%
    as.numeric() %>% 
    round() 
  
  full_dict <- 
    tibble(num = max_assigned) %>% 
    left_join(rainbow_dict) %>% 
    mutate(
      char = max_char %>% 
        str_split("") %>% .[[1]],
      rn = row_number()
    )
  
  tbl <- 
    a_lines %>% 
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
      num = row_number()
    ) %>% 
    left_join(full_dict, by = c("num" = "rn")) %>% 
    select(-lines) %>% 
    rowwise() %>% 
    mutate(
      style = crayon::make_style(color) %>% list(),
      out = style(split_chars)
    ) %>% 
    ungroup() %>% 
    group_by(line_id) %>% 
    mutate(
      res = ifelse(num == max(num),
                   out %>% paste("\n", sep = ""),
                   out)
    ) %>% 
    select(-style) 
  
  tbl$res %>% 
    str_c(collapse = "") %>% cat()

}


make_rainbow("yoda")

