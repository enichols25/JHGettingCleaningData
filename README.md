run_analysis.R version 1.0
=====================

##This repository contains one script with one function that performs the following operations:

##1) Reads the two files containing the test and training data
2) Combines the two files using the rbind command
3) Creates a new data frame that limits the columns to only the columns that contain mean or standard deviation calculations
4) Renames each column to a descriptive name for each column
5) Creates a new data frame that calculates the average for each of the columns
6) Writes a new data set to the file system that contains the descriptive names and averages of each column
