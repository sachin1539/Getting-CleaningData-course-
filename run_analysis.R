### download the  Data file 
 
filesPath <- "C:\SachinAwasthi\EY\personal\Datascience\GettingandCleaningData\Week4\graded"
 
setwd(filesPath)
 
 if(!file.exists("./graded")){dir.create("./graded")}
 
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
 
    download.file(fileUrl,destfile="./graded/Dataset.zip",method="curl")

###Unzip DataSet to /data directory
 
unzip(zipfile="./graded/Dataset.zip",exdir="./graded")

### read the training dataset
library(dplyr)
library(data.table)
library(tidyr)


## read the test datset

trainingSubjects <- read.table(file.path(filesPath, "train", "subject_train.txt"))
trainingValues <- read.table(file.path(filesPath, "train", "X_train.txt"))
trainingActivity <- read.table(file.path(filesPath, "train", "y_train.txt"))

testSubjects <- read.table(file.path(filesPath, "test", "subject_test.txt"))
testValues <- read.table(file.path(filesPath, "test", "X_test.txt"))
testActivity <- read.table(file.path(filesPath, "test", "y_test.txt"))

features <- read.table(file.path(filesPath, "features.txt"), as.is = TRUE)

activities <- read.table(file.path(filesPath, "activity_labels.txt"))
colnames(activities) <- c("activityId", "activityLabel")

## Merges the training and the test sets to create one data set.

humanActivity <- rbind(
    cbind(trainingSubjects, trainingValues, trainingActivity),
    cbind(testSubjects, testValues, testActivity)
)

colnames(humanActivity) <- c("subject", features[, 2], "activity")

## Extracts only the measurements on the mean and standard deviation for each measurement

columnsToKeep <- grepl("subject|activity|mean|std", colnames(humanActivity))

humanActivity <- humanActivity[, columnsToKeep]

##Uses descriptive activity names to name the activities in the data set

humanActivity$activity <- factor(humanActivity$activity, 
                                 levels = activities[, 1], labels = activities[, 2])

## Appropriately labels the data set with descriptive variable names.

# get column names
humanActivityCols <- colnames(humanActivity)

# remove special characters
humanActivityCols <- gsub("[\\(\\)-]", "", humanActivityCols)

# expand abbreviations and clean up names
humanActivityCols <- gsub("^f", "frequencyDomain", humanActivityCols)
humanActivityCols <- gsub("^t", "timeDomain", humanActivityCols)
humanActivityCols <- gsub("Acc", "Accelerometer", humanActivityCols)
humanActivityCols <- gsub("Gyro", "Gyroscope", humanActivityCols)
humanActivityCols <- gsub("Mag", "Magnitude", humanActivityCols)
humanActivityCols <- gsub("Freq", "Frequency", humanActivityCols)
humanActivityCols <- gsub("mean", "Mean", humanActivityCols)
humanActivityCols <- gsub("std", "StandardDeviation", humanActivityCols)

# correct typo
humanActivityCols <- gsub("BodyBody", "Body", humanActivityCols)

# use new labels as column names
colnames(humanActivity) <- humanActivityCols



## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# group by subject and activity and summarise using mean
humanActivityMeans <- humanActivity %>% 
    group_by(subject, activity) %>%
    summarise_all(funs(mean))

# output to file "tidy_data.txt"
write.table(humanActivityMeans, "tidy_data.txt", row.names = FALSE, 
            quote = FALSE)
