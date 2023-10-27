# Clean the R environment
rm(list = ls())

# Check if rstudioapi package is installed
# needed for Directory Detection
if (!requireNamespace("rstudioapi", quietly = TRUE)) {
  # If not installed, install it
  install.packages("rstudioapi")
}

# Now load the rstudioapi package
library(rstudioapi)

# Get the source editor context
editor_context <- getSourceEditorContext()

# Check if the context exists and get the path
# And use this to Set the working directory
# or manual: setwd("C:/ProjectsInR/Project1")
if (!is.null(editor_context)) {
  script_path <- editor_context$path
  script_directory <- dirname(script_path)  # Extract the directory part
  setwd(script_directory)  # Set the working directory to the script's directory
  cat("Working directory set to:", script_directory, "\n")
} else {
  cat("Script is not opened in RStudio's source editor\n")
}

#Load Bubble sort function
source("BubbleSort.R")

# Example usage
unsorted_array <- c(64, 34, 25, 12, 22, 11, 90)

# Write the unsorted Array#
cat("Unsorted Array: ", unsorted_array, "\n")

# Using the bubblesort function, sort the function
sorted_array <- BubbleSort(unsorted_array)

# write the sorted Array#
cat("Sorted Array: ", sorted_array, "\n")
