# `colours` contains a vector of all UCL colours -------------------------------

colours <- tibble::tribble(
  ~name, ~hex_code,
  "Dark Green", "#555025",
  "Dark Red", "#651D32",
  "Dark Purple", "#4B384C",
  "Dark Blue", "#003D4C",
  "Dark Brown", "#4E3629",
  "Mid Green", "#8F993E",
  "Mid Red", "#93272C",
  "Mid Purple", "#500778",
  "Mid Blue", "#002855",
  "Stone", "#D6D2C4",
  "Bright Green", "#B5BD00",
  "Bright Red", "#D50032",
  "Bright Blue", "#0097A9",
  "Bright Pink", "#AC145A",
  "Light Green", "#BBC592",
  "Light Red", "#E03C31",
  "Light Purple", "#C6B0BC",
  "Light Blue", "#8DB9CA",
  "Yellow", "#F6BE00",
  "Orange", "#EA7600",
  "Grey", "#8C8279",
  "Blue Celeste", "#A4DBE8",
  "IOE Blue", "#3255A4",
  "Black", "#000000",
  "White", "#FFFFFF"
) |>
  dplyr::mutate(name = tolower(name)) |>
  tibble::deframe()



# `palettes` contains list of defined palettes ---------------------------------

palettes <- list(
  # Sequential
  `blues` = ucl_colours("Dark Blue", "Light Blue"),
  `greens` = ucl_colours("Dark Green", "Light Green"),
  `purples` = ucl_colours("Dark Purple", "Light Purple"),
  `reds` = ucl_colours("Dark Red", "Light Red"),
  `greys` = c("#333333", "#CCCCCC"),
  # Diverging
  `blue_red` = ucl_colours("Mid Blue", "White", "Mid Red"),
  `yellow_purple` = ucl_colours("Yellow", "White", "Mid Purple"),
  `orange_blue` = ucl_colours("Orange", "white", "Mid Blue"),
  # Qualitative
  `bright` = ucl_colours(
    "Bright Red", "Light Blue", "Bright Green", "Light Purple",
    "Bright Blue", "Light Green", "Orange", "Blue Celeste"
  )
)



# Save data to sysdata.Rda -----------------------------------------------------

usethis::use_data(colours, palettes, overwrite = TRUE, internal = TRUE)
