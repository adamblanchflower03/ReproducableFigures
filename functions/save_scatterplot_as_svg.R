save_as_svg <- function(data, filename, size, res, scaling){
  size_inches = size/2.54
  svglite(filename, width = size_inches,
          height = size_inches,
          scaling = scaling)
  print(scatterplot)
  dev.off()
}
