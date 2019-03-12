==================================================================

get and clean data project readme file

==================================================================

author: Nate Halsey

date: 2019-03-11

location: Atlanta, GA

contact: https://www.linkedin.com/in/n8halsey

==================================================================

description:

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up
are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data
collected from the accelerometers from the Samsung Galaxy S smartphone.

source data description is located at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

location of source data that was used for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This github repository contains the R script along with the transformed and tidy output data set txt file.
The R script, output dataset, this readme file and a codebook file represent the project deliverables for the
Getting and Cleaning Data course.

==================================================================

supporting context and background regarding the original source data:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The experiments that produced the data were carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope,
we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments
were video-recorded to label the data manually. The obtained dataset has been randomly partitioned
into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in
fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which
has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz
cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time
and frequency domain. See 'features_info.txt' for more details.

The following info was included with each record that was provided in the original source data:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

===================================================================

summary description for the activities that were performed:

- train and test data were merged together for a combined dataset
- each measurement had the mean and standard deviation measured
- the measurements were averaged for each subject and activity
- tidy output text file produced consisting of averages

==================================================================

project deliverables:

- tidy data set txt output file
- R script that produced the tidy data set txt file
- readme file
- code book
- upload all delivereables to github

==================================================================

deliverable output files:

- tidy-dataset.txt output data set
- get-clean-data-project-script.R contains all the code to perform the analyses described in the 5 steps. They can be launched in RStudio by just importing the file.
- readme.md
- codebook.md describes the how to use all this, variables, the data, and any transformations or work that was performed to clean up the data.

==================================================================

notes:

- tidy-dataset.txt was produced as an output when executing the get-clean-data-project.R script file
- R version 3.5.2 was used when creating the R script

==================================================================