
library(tidyverse)

rainbow_colors <- 
  c("red", "orange", "yellow",
    "green", "blue", "purple")

rainbow_dict <- 
  tibble(
    color = rainbow_colors,
    num = 1:length(rainbow_colors)
  )

chicken <- animals[["chicken"]]

chicken_lines <- 
  tibble(
  full = chicken
) %>% 
  mutate(
    lines = chicken %>% str_split("\\n") 
  ) %>% 
  unnest(lines) %>% 
  mutate(
    n_char = nchar(lines)
  )

chicken_lines %>% 
  filter(n_char == max(n_char)) %>% 
  mutate(
    splits = split(lines,
                   rainbow_colors) %>% list()
  ) 
  
max_char <- 
  chicken_lines %>% 
  filter(n_char == max(n_char)) %>% 
  pull(lines)


per_group <- floor(nchar(max_char)/6)
total <- per_group*6

max_assigned <- 
  cut(seq(25), length(rainbow_colors),
    include.lowest = TRUE,
    dig.lab = 0) %>%
  as.numeric() %>% 
  round() 
  

dict <- 
  tibble(num = max_assigned) %>% 
  left_join(rainbow_dict) %>% 
  mutate(
    char = max_char %>% 
      str_split("") %>% .[[1]]
  )

foo <- dict %>% 
  rowwise() %>% 
  mutate(
    style = crayon::make_style(color) %>% list(),
    out = style(char)
  )

foo$out %>% str_c(collapse = "") %>% cat()

