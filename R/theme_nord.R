#'
#' Nord theme for ggplot
#'
#' @export
#' @name theme_nord
#' @author Sebastian Rauschert
#' @title Theme based on the Nord color scheme for ggplot2
#' @examples
#' theme_nord(theme="dark")


theme_nord <- function(theme="nord") {#, color_key = list(
  # light_mode = list(
  #   family_title="Circular Air Bold"
  #   , family_text = "Circular Air Medium"
  #   , colour_title = "#F14000"
  #   , colour_text = "#535353"),
  # dark_mode = list(
  #   family_title="Facebook Letter Faces"
  #   , family_text = "Facebook Letter Faces"
  #   , colour_title = "#3D579D"
  #   , colour_text = "#535353")
  # )) {

  theme_minimal() +   #replace elements we want to change

    theme(

      #grid elements
      panel.grid.major = element_blank(),    #strip major gridlines
      panel.grid.minor = element_blank(),    #strip minor gridlines
      axis.ticks = element_blank(),          #strip axis ticks

      #since theme_minimal() already strips axis lines,
      #we don't need to do that again
      panel.background = element_rect(
        fill = '#2e3440',
        colour = '#d8dee9',
        size = 2),

      plot.background = element_rect(
        fill = '#2e3440'),

      #text elements
      plot.title = element_text(             #title
        #family = font,            #set font family
        size = 20,                #set font size
        face = 'bold',            #bold typeface
        hjust = 0,                #left align
        vjust = 2,
        colour = '#d8dee9'),               #raise slightly

      plot.subtitle = element_text(          #subtitle
        #family = font,            #font family
        size = 14,
        colour = '#d8dee9'),               #font size

      plot.caption = element_text(           #caption
        #family = font,            #font family
        size = 9,                 #font size
        hjust = 1,
        colour = '#d8dee9'),               #right align

      axis.title = element_text(             #axis titles
        #family = font,            #font family
        size = 15,
        colour = '#d8dee9'),               #font size

      axis.text = element_text(              #axis text
        #family = font,            #axis famuly
        size = 15,
        colour = '#d8dee9'),                #font size

      axis.text.x = element_text(            #margin for axis text
        margin = margin(5, b = 10)),


      legend.text = element_text(
        color='#d8dee9',
        size=12),

      legend.title = element_text(
        color='#d8dee9',
        size=14)
      #since the legend often requires manual tweaking
      #based on plot content, don't define it here
    )
}

  #   theme_classic() +
  #     theme(text=element_text(size=18, family=tech_key[[theme]]$family_text)) +
  #     theme(legend.title=element_blank()) +
  #     theme(plot.title = element_text(size = 25, colour = tech_key[[theme]]$colour_title, family=tech_key[[theme]]$family_title)) +
  #     theme(plot.subtitle = element_text(size = 15, colour = tech_key[[theme]]$colour_title, family=tech_key[[theme]]$family_title)) +
  #     theme(axis.text.x=element_text(color=tech_key[[theme]]$colour_text)) +
  #     theme(axis.text.y=element_text(color=tech_key[[theme]]$colour_text)) +
  #     theme(axis.title.x=element_text(color=tech_key[[theme]]$colour_text, vjust=0)) +
  #     theme(axis.title.y=element_text(color=tech_key[[theme]]$colour_text, vjust=1.25)) +
  #     theme(plot.background = element_blank(),
  #           panel.grid.major = element_blank(),
  #           panel.grid.minor = element_blank())+
  #     theme(panel.border= element_blank())+
  #     theme(axis.line.x = element_line(color=tech_key[[theme]]$colour_text, size = 0.5),
  #           axis.line.y = element_line(color=tech_key[[theme]]$colour_text, size = 0.5)) +
  #     theme(line = element_line(color=tech_key[[theme]]$colour_text)) +
  #     theme(rect = element_rect(color=tech_key[[theme]]$colour_text)) +
  #     theme(axis.ticks.x = element_line(color=tech_key[[theme]]$colour_text)) +
  #     theme(axis.ticks.y = element_line(color=tech_key[[theme]]$colour_text))
  #
  # }
