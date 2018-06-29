
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

# chicken_lines %>% 
#   filter(n_char == max(n_char)) %>% 
#   mutate(
#     splits = split(lines,
#                    rainbow_colors) %>% list()
#   ) 
  
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

rbow <- dict %>% 
  rowwise() %>% 
  mutate(
    style = crayon::make_style(color) %>% list(),
    out = style(char)
  )

rbow$out %>% str_c(collapse = "") %>% cat()





full_dict <- 
  dict %>% 
  mutate(
    rn = row_number()
  )

  

one <- 
  chicken_lines %>% 
  select(lines) %>% 
  mutate(line_id = row_number()) %>% 
  rowwise() %>% 
  mutate(
    num = seq(nchar(lines)) %>% list(),
    split_chars = lines %>% str_split("")
  ) 

one_chars <- 
  one %>% 
  unnest(split_chars) %>% 
  group_by(line_id) %>% 
  mutate(
    num = row_number()
  )

one_foo <- 
  one_chars %>% 
  left_join(full_dict, by = c("num" = "rn")) %>% 
  select(-lines)

# one_num <- 
#   one %>% 
#   unnest(num) %>%
#   filter(num > 0) %>%
#   left_join(dict) %>% 
#   select(-char, -lines)

# two <- one_foo %>% 
#   left_join(one_chars, by = "line_id") %>% 
#   drop_na() 
  # distinct(line_id, split_chars, .keep_all = TRUE)

three <- 
  one_foo %>% 
  rowwise() %>% 
  mutate(
    style = crayon::make_style(color) %>% list(),
    out = style(split_chars),
    res = out %>% str_c(collapse = "")
  ) %>% 
  select(-style) 

three$res %>% str_c(collapse = "") %>%  cat()


four <-
  two %>% 
  nest(-lines) 
  three$data %>% 
  pluck(res)

three$data[[4]]$out %>% str_c(sep = "") %>% cat()

three

