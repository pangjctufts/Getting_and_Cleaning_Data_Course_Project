## Getting and Cleaning Data Project

Course project for Coursera course "Getting and Cleaning Data"

### Project Description

The goal of this project to prepare tidy data that can be used for later analysis. 

[The raw data set can be found here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

You will be required to submit: 
1) a tidy data set as described below, 
2) a link to a Github repository with your script for performing the analysis, and 
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
You should also include a README.md in the repo with your scripts. 


You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

### Files in this repository

* __CodeBook.md__: information about the variables, data and transformations from the raw data to the tidy data.
* __run_analysis.R__: R script which transforms the raw data set into the tidy one.
* __tidyData.txt__: the tidy data
* __README.md__: this file.