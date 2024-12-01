save_histogram_as_png <- function(data, filename, size, res, scaling){
  agg_png(filename, width = size,
          height = size,
          units = "cm",
          res = res,
          scaling = scaling)
  print(histogram)
  dev.off()
}