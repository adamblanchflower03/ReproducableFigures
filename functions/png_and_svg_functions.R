## Script name: Save_as_png_and_svg_functions
##
## Purpose of script: 
##      # A file of functions for saving figures as .png and .svg files 
##
## Author: Adam Blanchflower
##
## Date Created: 01-12-2024
##

#save diagnostic plot as .png

save_as_png <- function(data, filename, plot, size, res, scaling){
  agg_png(filename, width = size,
          height = size,
          units = "cm",
          res = res,
          scaling = scaling)
  print(plot)
  dev.off()
}

#save diagnostic plot as .svg

save_as_svg <- function(data, filename, plot, size, res, scaling){
  size_inches = size/2.54
  svglite(filename, width = size_inches,
          height = size_inches,
          scaling = scaling)
  print(plot)
  dev.off()
}
