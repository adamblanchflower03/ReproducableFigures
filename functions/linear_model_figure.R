## Script name: linear_model_figure.R
##
## Purpose of script: 
##      # A function for producing linear model figures  
##
## Author: Adam Blanchflower
##
## Date Created: 02-12-2024
##


linear_model_figure <- function(data, x_column, y_column, x_label, y_label) {
  ggplot(data = data, 
         aes(x = {{ x_column }},
             y = {{ y_column }})) +
    geom_point(color = "black") +
    geom_smooth(method = "lm", aes(group = 1), se = FALSE, color = "firebrick", linetype = "solid") +
    xlab(x_label) +
    ylab(y_label)
}