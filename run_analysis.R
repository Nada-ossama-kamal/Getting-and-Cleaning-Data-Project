##Read the features names 
col_names <- read.table("UCI HAR Dataset\\features.txt")
valid_names <- make.names(as.vector(col_names$V2), unique = TRUE)

##Read the training data and test data with heads as the feature names
training_data <- read.table("UCI HAR Dataset\\train\\X_train.txt", col.names = valid_names)
test_data <- read.table("UCI HAR Dataset\\test\\X_test.txt", col.names = valid_names)

##Reading activity labels
activity_labels <- read.table("UCI HAR Dataset\\activity_labels.txt")

##Read the training data and test data activity labels
training_data_activities <- read.table("UCI HAR Dataset\\train\\y_train.txt")
test_data_activities <- read.table("UCI HAR Dataset\\test\\y_test.txt")

##Uses descriptive activity names to name the activities in the data set
training_data_activities2 <- as.vector(factor(training_data_activities$V1, levels= as.vector(activity_labels$V1), labels=as.vector(activity_labels$V2)))
test_data_activities2 <- as.vector(factor(test_data_activities$V1, levels= as.vector(activity_labels$V1), labels=as.vector(activity_labels$V2)))

##adding activity col to the training and test data sets
training_data$activity <- training_data_activities2
test_data$activity <- test_data_activities2

##Read the training data and test data subject
training_data_subject <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
test_data_subject <- read.table("UCI HAR Dataset\\test\\subject_test.txt")

##adding subject col to the training and test data sets
training_data$subject <- as.vector(training_data_subject$V1)
test_data$subject <- as.vector(test_data_subject$V1)

#Merge the training data and test data into one dataset 
data <- merge(training_data, test_data, all = TRUE)

library(dplyr)

##Extract only the measurements on the mean and standard deviation
data_subset <- select(data, matches("(.\\.(mean|std)\\.\\.)|(activity)|(subject)"))

##creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(doBy)
data_summ <- summaryBy( .~ activity + subject, data = data_subset, FUN = mean, fun.names = "average")

write.table(data_summ, "summary.txt", row.names=FALSE)

