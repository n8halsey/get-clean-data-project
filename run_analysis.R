# 1. load plyr package and the source dataset

# 1.1 load plyr package
install.packages("plyr")
library(plyr)

# 1.2 download
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/activity.zip")

# 1.3 unzip activity dataset
unzip(zipfile="./data/activity.zip",exdir="./data")


# 2. read in data sets and merge to create single combined dataset

# 2.1 read in train data
x_train <- read.table("./data/UCI HAR Dataset/train/x_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# 2.1.1 read in test data
x_test <- read.table("./data/UCI HAR Dataset/test/x_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# 2.1.3 read in feature data
features <- read.table('./data/UCI HAR Dataset/features.txt')

# 2.1.4 read in variable name definitions for activity
activityLabels = read.table('./data/UCI HAR Dataset/activity_labels.txt')

# 2.2 assign variable names
colnames(x_train) <- features[,2]
colnames(y_train) <- "activityId"
colnames(subject_train) <- "subjectId"

colnames(x_test) <- features[,2]
colnames(y_test) <- "activityId"
colnames(subject_test) <- "subjectId"

colnames(activityLabels) <- c("activityId","activityCategory")

# 2.3 merge data together into combined data set
merge_train <- cbind(y_train, subject_train, x_train)
merge_test <- cbind(y_test, subject_test, x_test)
combinedActivity <- rbind(merge_train, merge_test)

# 2.4 review combined data set (563 variables)
head(combinedActivity, n=3)

# 3. extract mean and stddev measurements for each 

# 3.1 read in variable names for combinedActivity
colNames <- colnames(combinedActivity)

# 3.2 vector for mean, stddev and identifiers
mean_stddev <- (grepl("activityId", colNames)
                | grepl("subjectId", colNames)
                | grepl("mean..", colNames)
                | grepl("std..", colNames)
)

# 3.3 produce sub data set from combinedActivity
meanStddevData <- combinedActivity[ , mean_stddev == TRUE]


# 4. descriptive names for data set activities

# 4.1 assign merged dataset to variable activityNames
activityNames <- merge(meanStddevData, activityLabels, by = 'activityId', all.x = TRUE)

# 4.2 replace original datasource activity variable names with variable names from activity_lables.txt
activityNames$activityId <- factor(activityNames$activityId, levels = activityLabels[, 1], labels = activityLabels[, 2])

# 5. produce independent tidy data set with avg of each activity variable and subject

# 5.1 create independent tidy data set
indTidyData <- aggregate(. ~subjectId + activityId, activityNames, mean)
indTidyData <- indTidyData[order(indTidyData$subjectId, indTidyData$activityId),]

# 5.2 review the data set (82 variables)
head(indTidyData, n=3)

# 5.3 write independent tidy data set and format to a txt file 
write.table(indTidyData, "./data/tidy_dataset.txt", row.names = FALSE)
