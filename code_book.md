

==================================================================

get and clean data project code book file 

code book is for file tidy-dataset.txt and file get-clean-data-project-script.R that iare located in this repository

reference material: supporting context and relevant info about the project is in the readme.md file that is located in this repository

two files are described in this codebook file
- tidy-datset.txt
        - project deliverable output dataset
- get-clean-data-project-script.R 
        - project deliverable R script used to produce the dataset output deliverable

==================================================================

author: Nate Halsey

date: 2019-03-11

location: Atlanta, GA

contact: https://www.linkedin.com/in/n8halsey

==================================================================

project assignment activities descriptions: 

- download online data source from UCI Machine Learning Repository - the UCI Human Activity Recognition Using Smartphones data set
- merge datasets
- transform combined dataset
- produce tidy output dataset
- upload script, output tidy dataset, readme file, and this codebook file to github

==================================================================

source data description and location:

description of the source data is available at the site where the data was obtained: 
- http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

here are the data for the project: 
- https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 
==================================================================

get-clean-data-project-script.R organization and sequence of steps:

1. load plyr package and the source dataset
1.1 load plyr package
1.2 download
1.3 unzip activity dataset
2. read in data sets and merge to create single combined dataset
2.1 read in train data
2.1.1 read in test data
2.1.3 read in feature data
2.1.4 read in variable names for activity
2.2 assign variable definitions
2.3 merge data together into combined data set
2.4 review combined data set (563 variables)
3. extract mean and stddev measurements for each 
3.1 read in variable names for combinedActivity
3.2 vector for mean, stddev and identifiers
3.3 produce sub data set from combinedActivity
4. descriptive names for data set activities
4.1 assign merged dataset to variable activityNames
4.2 replace original datasource activity variable names with variable names from activity_lables.txt
5. produce independent tidy data set with avg of each activity variable and subject
5.1 create independent tidy data set
5.2 review the data set (82 variables)
5.3 write independent tidy data set and format to a txt file 

==================================================================

tidy-dataset.txt file data section:

- variable names make up the first row in the tidy-dataset.txt file
- tidy-dataset.txt variables are separated by spaces 

==================================================================

tidy-dataset.txt variables section:

summary: each row consists of 82 variables (reduced from 563 variables that were in the merged dataset)...
- one subjectId value, one activityId value, and one activityCategory value the average value for 79 signal measurements 
 
sequence of variables:
- subjectId variable
- activityId variable
        - 79 measurement variables
                - 40 time signal variables
                - 39 frequency signal variables
        - activityCategory variable

descriptive activity identifier and variable names updated from activity_labels.txt file
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

==================================================================

get-clean-data-project-script.R variables section:

- data downloaded from the original source data are contained in script variables x_train, y_train, x_test, y_test, subject_train and subject_test
- the rows in merg_train and merge_test datasets are bound together into variable combinedActivity # for analysis and transformation
- the original data source file features has the column names that are assigned to x_train and x_test datasets

==================================================================

transformations section:

- test dataset was merged with train dataset
- mean and standard deviation measurements
- descriptive names assigned activity identifiers
- final output tidy data set created with average of each measurement variable for each subject and activity

NOTE: all transformations were executed by R code in get-clean-data-project-script.R file

==================================================================

