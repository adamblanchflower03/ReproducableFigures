save_results_figure_as_svg <- function(data, filename, size, res, scaling){
  size_inches = size/2.54
  svglite(filename, width = size_inches,
          height = size_inches,
          scaling = scaling)
  print(linear_model_results_figure)
  dev.off()
}