## Script name: exploratory_figure_functions.R
##
## Purpose of script: 
##      # A file of functions for producing different exploratory figures 
##
## Author: ...
##
## Date Created: 01-12-2024
##

#scatterplot for one species

scatterplot_for_one_species <- function(data,
                                        x_column,
                                        y_column,
                                        x_label,
                                        y_label) {
  
  ggplot(data = data,
         aes(
           x = {{ x_column }},
           y = {{ y_column}},
           shape = {{ species }})) +
    geom_point(size = 1.5) +
    labs(
      x = x_label,
      y = y_label) + 
    theme_minimal
  
}


#scatter plot for three species 

three_species_scatterplot <- function(data,
                                      x_column,
                                      y_column,
                                      species,
                                      x_label,
                                      y_label) {
  data <- data %>%
    drop_na({{ y_column}})
  
  ggplot(data = data,
         aes(
           x = {{ x_column }},
           y = {{ y_column}},
           shape = {{species}})) + 
    geom_point(size = 1.5) +
    scale_shape_manual(values = c(16, 17, 18)) +
    labs(
      x = x_label,
      y = y_label) + 
    theme_minimal()
  
}


#overlapping histogram 

overlapping_histogram_comparing_sexes <- function(data, x_column, group, x_label, y_label){
  ggplot(data = data,
         aes(
           x = {{ x_column }},
           fill = {{ group }})) +
    geom_histogram(position = "identity", alpha = 0.6, bins = 30) +
    scale_fill_manual(values = c("MALE" = "royalblue1", "FEMALE" = "orange2")) +
    labs(x = x_label,
         y = y_label) +
    theme_minimal()
}
