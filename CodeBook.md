## Getting and Cleaning Data Project

### Brief description

Information about the variables, data and transformations from the raw data to the tidy data for Coursera 
course "Getting and Cleaning Data".

[The raw data set can be found here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

[A full description for the data set is here.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Data transformation

* Step 0. Download, unzip and read the raw data set.

* Step 1. Merge the training and the test sets to create one data set.
Merge the test and training data (X_train.txt, X_test.txt), subject ID (subject_train.txt, subject_test.txt) 
and activity ID (y_train.txt, y_test.txt) into a single data set. 

* Step 2. Extract only the measurements on the mean and standard deviation for each measurement. 
Use grep to find features which contain "mean" or "std".
Only select columns corresponding to the features above.

* Step 3. Use descriptive activity names to name the activities in the data set
Use the factor property to replace the activity IDs into activity names. 

* Step 4. Appropriately label the data set with descriptive activity names.
Use gsub to replace abbreviations in the column names of the data set.

* Step 5. From the data set in step 4, creates a second, independent 
tidy data set with the average of each variable for each activity and each subject.
Use write.table() to realize the above request.
