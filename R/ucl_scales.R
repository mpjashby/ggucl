#' UCL colour scales for colour and fill aesthetics
#'
#' @param palette Character name of one of the palettes
#' @param discrete Should the palette represent discrete values or continuous
#'   values?
#' @param reverse Should the order of values in the palette be reversed?
#' @param ... Further arguments passed to \code{scale_colour_manual} for
#'   discrete palettes and \code{scale_colour_gradientn} for continuous
#'   palettes.
#'
#' @export

scale_colour_ucl <- function(
    palette = "blues",
    discrete = TRUE,
    reverse = FALSE,
    ...
  ) {

  pal <- ucl_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::scale_colour_manual(values = ucl_pal(palette)(8), ...)
  } else {
    ggplot2::scale_colour_gradientn(colours = pal(256), ...)
  }

}



#' @describeIn scale_colour_ucl UCL colour scales for colour and fill aesthetics
scale_color_ucl <- function(...) scale_colour_ucl(...)



#' @describeIn scale_colour_ucl UCL colour scales for colour and fill aesthetics
scale_fill_ucl <- function(
    palette = "blues",
    discrete = TRUE,
    reverse = FALSE,
    ...
) {

  pal <- ucl_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::scale_colour_manual(values = ucl_pal(palette)(8), ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }

}



ucl_pal <- function(palette = "blues", reverse = FALSE, ...) {

  pal <- ucl_palette(palette)

  if (reverse) pal <- rev(pal)

  grDevices::colorRampPalette(pal, ...)

}
