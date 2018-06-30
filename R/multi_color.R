#' Multi-color text
#'
#' @export
#'
#' @param txt (character) Some text to color.
#' @param colors (character) A vector of colors, defaulting to 
#' c("red", "orange", "yellow", "green", "blue", "purple")
#' @param as_string (logical) If TRUE, the response is a plain, 
#' uncolored string with ascii color tags attached. 
#' If FALSE, the string is passed to \code{cat}
#' and colored text is returned.
#' @param ... Further args.
#' 
#' @details This function evenly (ish) divides up your string into 
#' these colors in the order they appear in \code{colors}.
#' 
#' Any colors in \code{colors()} or hex values (see \code{?rgb})
#' are fair game.
#' 
#' @return A string if \code{as_string} is TRUE, or colored 
#' text if FALSE.
#'
#' @examples
#' multi_color("ahoy")
#' 
#' animals[["buffalo"]] %>% 
#'   multi_color("green", "white", "orange")
#' 
#' rms %>% 
#'   multi_color(sample(colors(), 10))

multi_color <- function(txt = NULL, 
                        colors = c("red", "orange", "yellow",
                                  "green", "blue", "purple"), 
                        as_string = FALSE,
                        ...) {
  
  if (!any(is.character(colors))) {
    stop("All multi colors must be of type character.")
  }
  
  rainbow_dict <- 
    tibble::tibble(
      color = colors,
      num = 1:length(colors)
    )
  
  whose_line <- 
    tibble::tibble(
      full = txt
    ) %>% 
    dplyr::mutate(
      lines = txt %>% stringr::str_split("\\n") 
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
  
  if (as_string == TRUE) {
    return(out)
  } else {
    out %>% cat()
  }
}

