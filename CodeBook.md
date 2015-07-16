##Description
Information about the variables, data and transformations used to perform the tidy dataset for course project for Module 3: Getting and Cleaning Data


##Data Set
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


##Variable Information

###For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

##Identifiers
- Subject: The ID of the test subject
- Activity: The type of activity performed when the measurements were taken

##Measurements
+ tBodyAccMeanX
+ tBodyAccMeanY
+ tBodyAccMeanZ
+ tBodyAccStdX
+ tBodyAccStdY
+ tBodyAccStdZ
+ tGravityAccMeanX
+ tGravityAccMeanY
+ tGravityAccMeanZ
+ tGravityAccStdX
+ tGravityAccStdY
+ tGravityAccStdZ
+ tBodyAccJerkMeanX
+ tBodyAccJerkMeanY
+ tBodyAccJerkMeanZ
+ tBodyAccJerkStdX
+ tBodyAccJerkStdY
+ tBodyAccJerkStdZ
+ tBodyGyroMeanX
+ tBodyGyroMeanY
+ tBodyGyroMeanZ
+ tBodyGyroStdX
+ tBodyGyroStdY
+ tBodyGyroStdZ
+ tBodyGyroJerkMeanX
+ tBodyGyroJerkMeanY
+ tBodyGyroJerkMeanZ
+ tBodyGyroJerkStdX
+ tBodyGyroJerkStdY
+ tBodyGyroJerkStdZ
+ tBodyAccMagMean
+ tBodyAccMagStd
+ tGravityAccMagMean
+ tGravityAccMagStd
+ tGravityAccJerkMagMean
+ tGravityAccJerkMagStd
+ tBodyGyroMagMean
+ tBodyGyroMagStd
+ tBodyGyroJerkMagMean
+ tBodyGyroJerkMagStd
+ fBodyAccMeanX
+ fBodyAccMeanY
+ fBodyAccMeanZ
+ fBodyAccStdX
+ fBodyAccStdY
+ fBodyAccStdZ
+ fGravityAccMeanX
+ fGravityAccMeanY
+ fGravityAccMeanZ
+ fGravityAccStdX
+ fGravityAccStdY
+ fGravityAccStdZ
+ fBodyAccJerkMeanX
+ fBodyAccJerkMeanY
+ fBodyAccJerkMeanZ
+ fBodyAccJerkStdX
+ fBodyAccJerkStdY
+ fBodyAccJerkStdZ
+ fBodyGyroMeanX
+ fBodyGyroMeanY
+ fBodyGyroMeanZ
+ fBodyGyroStdX
+ fBodyGyroStdY
+ fBodyGyroStdZ
+ fBodyGyroJerkMeanX
+ tBodyGyroJerkMeanY
+ tBodyGyroJerkMeanZ
+ tBodyGyroJerkStdX
+ tBodyGyroJerkStdY
+ tBodyGyroJerkStdZ
+ tBodyAccMagMean
+ tBodyAccMagStd
+ tGravityAccMagMean
+ tGravityAccMagStd
+ tGravityAccJerkMagMean
+ tGravityAccJerkMagStd
+ tBodyGyroMagMean
+ tBodyGyroMagStd
+ tBodyGyroJerkMagMean
+ tBodyGyroJerkMagStd


##Activity Labels
* Activity 1 - Walking: subject was walking during the test
* Activity 2 - Walking Upstairs: subject was walking up a staircase during the test
* Activity 3 - Walking Downstairs: subject was walking down a staircase during the test
* Activity 4 - Sitting: subject was sitting during the test
* Activity 5 - Standing: subject was standing during the test
* Activity 6 - Laying: subject was laying down during the test


##Data files
* x_train: Training set
*x_test: Test set
* y_train: Training labels
* y_test: Test labels
* subject_test: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
*subject_train: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.


##Transformations
* 1. Load the test dataset including test set, test labels and test subject.
* 2. Load the train dataset including train set, train labels and train subject.
* 3. Combine the test and train set together into a dataset.
* 4. Load the column names according to the feature data file.
* 5. Rename the column names to be more descriptive
* 6. Take only those column names with mean and standard deviation measures.
* 7. write the final output as tidy.txt
* 8. Upload the tidy.txt, R script (run_analysis.R), CodeBook.md and README.md to github repository.



