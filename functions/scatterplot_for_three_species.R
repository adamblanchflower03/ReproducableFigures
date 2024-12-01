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
    scale_shape_manual(values = c(16, 17, 21)) +
    labs(
      x = x_label,
      y = y_label) + 
    theme_minimal()
    
}
                                  
                               
