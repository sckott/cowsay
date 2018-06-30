
multi_color <- function(who = NULL, colors = c("red", "orange", "yellow",
                                         "green", "blue", "purple")) {
  
  rainbow_dict <- 
    tibble::tibble(
      color = colors,
      num = 1:length(colors)
    )
  
  whose_line <- 
    tibble::tibble(
      full = who
    ) %>% 
    dplyr::mutate(
      lines = who %>% stringr::str_split("\\n") 
    ) %>% 
    tidyr::unnest(lines) %>% 
    dplyr::mutate(
      n_char = nchar(lines)
    )
  
  # Find the line with the max number of characters
  max_char <- 
    whose_line %>% 
    dplyr::filter(n_char == max(n_char)) %>% 
    dplyr::pull(lines) %>% 
    dplyr::first()
  
  # Cut into roughly equal buckets
  max_assigned <- 
    cut(seq(nchar(max_char)), length(colors),
        include.lowest = TRUE,
        dig.lab = 0) %>%
    as.numeric() %>% 
    round() 
  
  # Assign a color for every possible character index based on the longest line
  dict <- 
    tibble::tibble(num = max_assigned) %>% 
    dplyr::left_join(rainbow_dict, by = "num") %>% 
    dplyr::mutate(
      char = max_char %>% 
        stringr::str_split("") %>% .[[1]],
      rn = dplyr::row_number()
    )
  
  tbl <- 
    whose_line %>% 
    dplyr::select(lines) %>% 
    dplyr::mutate(line_id = dplyr::row_number()) %>% 
    dplyr::rowwise() %>% 
    dplyr::mutate(
      num = seq(nchar(lines)) %>% list(),
      split_chars = lines %>% stringr::str_split("")
    ) %>% 
    tidyr::unnest(split_chars) %>% 
    dplyr::group_by(line_id) %>% 
    dplyr::mutate(
      rn = dplyr::row_number()
    ) %>% 
    # Assign colors by char position
    dplyr::left_join(dict, by = "rn") %>% 
    dplyr::select(-lines) %>% 
    dplyr::rowwise() %>% 
    dplyr::mutate(
      # Save the function in a list because we can't store a function in a col
      color_fun = crayon::make_style(color) %>% list(),  
      styled = color_fun(split_chars)
    ) %>% 
    dplyr::ungroup() %>% 
    dplyr::group_by(line_id) %>% 
    # Re-add a newline at the end of the last character of every line
    dplyr::mutate(
      res = ifelse(rn == max(rn),
                   styled %>% paste("\n", sep = ""),
                   styled)
    ) 
  
  out <- tbl$res %>% 
    stringr::str_c(collapse = "")
  
  return(out)
}
