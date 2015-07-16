#Module 3: Getting and Cleaning Data
# Course Project

library(reshape2)

#Load test dataset
testDataX = read.table("./UCI HAR Dataset/test/X_test.txt")
testDataY = read.table("./UCI HAR Dataset/test/Y_test.txt")
testDatasubject = read.table("./UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testDatasubject, testDataY, testDataX)

#Load train dataset
trainDataX = read.table("./UCI HAR Dataset/train/X_train.txt")
trainDataY = read.table("./UCI HAR Dataset/train/Y_train.txt")
trainDatasubject = read.table("./UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainDatasubject, trainDataY, trainDataX)


#Label the first variable (V1) as "Subject"
names(testDatasubject)<-c("Subject")
names(trainDatasubject)<-c("Subject")

#Label the second variable (V2) as "Activity"
names(testDataY)<- c("Activity")
names(trainDataY)<- c("Activity")

#Load activity labels and feature names
Labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")
Labels[,2] <- as.character(Labels[,2])
features[,2] <- as.character(features[,2])

#Label test and Train dataset variables (561 variables) according to the feature names
names(testDataX)<- features$V2
names(trainDataX)<- features$V2

#Combine Subject, Activity and features for test dataset into a dataset
test <- cbind(testDatasubject, testDataY, testDataX)
#Combine Subject, Activity and features for train dataset into a dataset
train <- cbind(trainDatasubject, trainDataY, trainDataX)
#Merges the test and the train datasets into one dataset
mergedData <- rbind(test, train)

#Select only mean and standard deviation features for each subject and activity
subdataFeatures<-features$V2[grep("mean\\(\\)|std\\(\\)", features$V2)]
selectedNames<-c(as.character(subdataFeatures), "subject", "activity" )

#Assign the column names
colnames(mergedData) <- c("subject", "activity", selectedNames)

#Generate subset of data only contain selected feature names - mean and standard deviation
TidyData<-subset(mergedData,select=selectedNames)

# Assign the activity labels to each row
TidyData$activity <- factor(TidyData$activity, levels = Labels[,1], labels = Labels[,2])


#Replace "-mean" to "Mean" 
names(TidyData) = gsub('-mean', 'Mean', names(TidyData))
#Replace  "-std" to "Std"
names(TidyData) = gsub('-std', 'Std', names(TidyData))
#Replace "-()" to ""
names(TidyData) <- gsub('[-()]', '',names(TidyData))

#Calculate the mean by subject and activity
FinalData<-aggregate(. ~subject + activity, TidyData, mean)

#Write the final output to tidy.txt
write.table(FinalData, "./tidy.txt", row.names = FALSE, quote = FALSE)

