save_as_png <- function(data, filename, size, res, scaling){
  agg_png(filename, width = size,
          height = size,
          units = "cm",
          res = res,
          scaling = scaling)
  print(scatterplot)
  dev.off()
}

