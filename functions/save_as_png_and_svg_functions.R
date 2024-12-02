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

save_ass_png <- function(data, filename, size, res, scaling){
  agg_png(filename, width = size,
          height = size,
          units = "cm",
          res = res,
          scaling = scaling)
  print(diagnostic_plot)
  dev.off()
}

#save diagnostic plot as .svg

save_ass_svg <- function(data, filename, size, res, scaling){
  size_inches = size/2.54
  svglite(filename, width = size_inches,
          height = size_inches,
          scaling = scaling)
  print(diagnostic_plot)
  dev.off()
}

#save histogram as .png

save_histogram_as_png <- function(data, filename, size, res, scaling){
  agg_png(filename, width = size,
          height = size,
          units = "cm",
          res = res,
          scaling = scaling)
  print(histogram)
  dev.off()
}

#save histogram as .svg

save_histogram_as_svg <- function(data, filename, size, res, scaling){
  size_inches = size/2.54
  svglite(filename, width = size_inches,
          height = size_inches,
          scaling = scaling)
  print(histogram)
  dev.off()
}

#save results figure as .png

save_results_figure_as_png <- function(data, filename, size, res, scaling){
  agg_png(filename, width = size,
          height = size,
          units = "cm",
          res = res,
          scaling = scaling)
  print(linear_model_results_figure)
  dev.off()
}

#save results figure as .svg

save_results_figure_as_svg <- function(data, filename, size, res, scaling){
  size_inches = size/2.54
  svglite(filename, width = size_inches,
          height = size_inches,
          scaling = scaling)
  print(linear_model_results_figure)
  dev.off()
}

sav


