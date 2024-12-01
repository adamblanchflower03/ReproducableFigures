save_results_figure_as_png <- function(data, filename, size, res, scaling){
  agg_png(filename, width = size,
          height = size,
          units = "cm",
          res = res,
          scaling = scaling)
  print(linear_model_results_figure)
  dev.off()
}