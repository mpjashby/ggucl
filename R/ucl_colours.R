#' Return colour values from the UCL colour scheme
#'
#' @param palette Character name of a palette.
#' @param ... Character values giving the names of one or more colours from the
#'   UCL colour scheme. If no values are supplied, all possible colours are
#'   returned.
#' @return A named vector of hex colour values.
#'
#' Calling \code{ucl_palette} with no arguments will return the names of all the
#' available palettes. More details are available on the [UCL style guide page on colour palettes](https://www.ucl.ac.uk/cam/brand/guidelines/colour).
#'
#' @export

ucl_colours <- function(...) {

  # Collapse dots arguments into a vector
  cols <- tolower(c(...))

  # Return specified colours, or all colours otherwise
  if (!is.null(cols)) {
    return(unname(colours[cols]))
  } else {
    return(unname(colours))
  }

}

#' @describeIn ucl_colours Return colour values from the UCL colour scheme
#' @export
ucl_palette <- function(palette = NULL) {

  if (is.null(palette)) {

    rlang::inform(c("Specify one of these palette names:", names(palettes)))

  } else {

    unname(palettes[[palette]])

  }

}
