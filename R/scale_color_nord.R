#' Nord color
#'
#' @export
#' @name scale_color_nord
#' @author Sebastian Rauschert
#' @title Nord scale color for ggplot2
#' @examples
#' scale_color_nord(theme="nord")


scale_color_nord <- function(theme="nord",
                             color_key = list(
  nord = c(
    '#81a1c1', #blue
    '#a3be8c', #green
    '#d08770', #orange
    '#b48ead', #purple
    '#ebcb8b', #yellow

    '#8fbcbb',
    '#bf616a',
    '#b48ead',
    '#88c0d0',
    '#d08770',
    '#81a1c1',
    '#ebcb8b',
    '#5e81ac',
    '#a3be8c',

    "#d5d6ea",
    "#d7ecd9" ,
    "#f5d5cb",
    "#f6ecf5",
    "#f3ddf2",
    "#9d465e",
    "#6f365c",
    "#75b390",
    "#ecd6ba",
    "#e8a9a5",
    "#697da2"
  )

)) {

  scale_color_manual(values=color_key[[theme]])

}
