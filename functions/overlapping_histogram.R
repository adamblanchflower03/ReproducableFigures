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

