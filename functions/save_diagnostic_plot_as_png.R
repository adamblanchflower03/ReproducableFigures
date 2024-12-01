save_diagnostic_plot_as_png <- function(data, filename, size, res, scaling){
  agg_png(filename, width = size,
          height = size,
          units = "cm",
          res = res,
          scaling = scaling)
  print(diagnostic_plot)
  dev.off()
}