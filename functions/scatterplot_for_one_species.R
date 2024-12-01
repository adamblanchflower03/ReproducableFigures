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
