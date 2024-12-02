## Script name: Save_as_png_and_svg_functions
##
## Purpose of script: 
##      # A file of functions for saving figures as .png and .svg files 
##
## Author: Adam Blanchflower
##
## Date Created: 01-12-2024
##

#save as .png

save_as_png <- function(data, filename, plot, size, res, scaling){
  agg_png(filename, width = size,
          height = size,
          units = "cm",
          res = res,
          scaling = scaling)
  print(plot)
  dev.off()
}

#save as .svg

save_as_svg <- function(data, filename, plot, size, scaling){
  size_inches = size/2.54
  svglite(filename, width = size_inches,
          height = size_inches,
          scaling = scaling)
  print(plot)
  dev.off()
}


# Function to diagnostic plot as .png
save_diagnostic_plot_as_png <- function(filename, plot_func, size, res, scaling) {
  agg_png(filename, width = size, height = size, units = "cm", res = res, scaling = scaling)
  par(mfrow = c(2, 2), mar = c(4, 4, 2, 2))  
  plot_func()  
  dev.off() 
}

# Function to save diagnostic plot as .svg
save_diagnostic_plot_as_svg <- function(filename, plot_func, size, scaling) {
  size_inches <- size / 2.54  
  svglite(filename, width = size_inches, height = size_inches, scaling = scaling)
  par(mfrow = c(2, 2), mar = c(4, 4, 2, 2))  
  plot_func()  
  dev.off()  
}

