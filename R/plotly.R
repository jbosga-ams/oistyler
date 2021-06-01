library('rjson')
library('plotly')

base_style <-fromJSON(file = url('https://raw.githubusercontent.com/jbosga-ams/oistyle/main/src/oistyle/base_style.json'))

colors = base_style[["colors"]]


#' Plotly OIS styling function
#'
#' This function applies OIS styling to your plotly plot.
#' @param fig Plotly figure to style
#' @keywords OIS style
#' @export
#' @examples
#' ois_layout()
ois_layout <- function(fig){
    fig <- fig %>% layout(font=list(family=base_style[["font"]], size=base_style[["font_size"]]),
        plot_bgcolor=base_style[["plot_bgcolor"]], 
        xaxis=list(zerolinecolor=base_style[["gridline_color"]], gridcolor=base_style[["gridline_color"]], gridwidth=base_style[["gridline_width"]], 
                    showline=TRUE, linewidth=base_style[["gridline_width"]], linecolor=base_style[["gridline_color"]], mirror=TRUE, showgrid=FALSE),
        yaxis=list(zerolinecolor=base_style[["gridline_color"]], gridcolor=base_style[["gridline_color"]], gridwidth=base_style[["gridline_width"]], 
                    showline=TRUE, linewidth=base_style[["gridline_width"]], linecolor=base_style[["gridline_color"]], mirror=TRUE, showgrid=FALSE)
        )
    return (fig)
}
