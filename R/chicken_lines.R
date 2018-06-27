
library(tidyverse)

rainbow_colors <- 
  c("red", "orange", "yellow",
    "green", "blue", "purple")

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
  
chicken_lines %>% 
  filter(n_char == max(n_char)) %>% 
  pull(lines)
  
