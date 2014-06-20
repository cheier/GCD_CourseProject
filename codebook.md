Codebook
========
This document provides additional information on the individual variables contained within the datasets that are written out by the run_analysis() function. For more information on this function, consult the README.md file contained in this package.

About the Source Data
---------------------
+ **Organization**: University of California, Irvine - Center for Machine Learning and Intelligent Systems
+ **Project Site**: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

####Detail Overview

+ **Data Set Characteristics**: Multivariate, Time-Series
+ **Number of Instances**: 10299
+ **Area**: Computer
+ **Attribute Characteristics**: N/A
+ **Number of Attributes**: 561
+ **Date Donated**: 2012-12-10
+ **Associated Tasks**: Classification, Clustering
+ **Missing Values**: N/A

Source data can be automatically downloaded through the run_analysis() function. Alternatively, the data can be downloaded from the project site at the following link:

http://archive.ics.uci.edu/ml/machine-learning-databases/00240/

####Features
For more information on the features in the data, refer to the **features_info.txt** document in the source data. The following is an overview of the processing done on the source data.

+ **Smartphone data source**: Accelerometer and gyroscope
+ **Pre-filter**
  + Median filter
  + 3rd order Butterworth filter with 20 Hz corner frequency
  + Low pass Butterworth filter at 0.3 Hz (separate Body and Gravity signals)
  + Fast Forier Transform (frequency domain signals only)

Data Cleaning Process
---------------------
The training and test data sets from the source are merged with labels, subject and activity IDs to create the tidy data set references in this codebook. This process is high level. For more details, refer to the README.md file contained in this project.

1. Appended data in features.txt to the top of the data in X_train.txt and X_test.txt.
2. Extracted variables from X_train.txt and X_test.txt related to mean() and std(). Data is organized to have all mean() grouped next to the std() data.
3. Appended the activity numbers from subject_test.txt and subject_train.txt to the front of the test and train data.
4. Appended the subject numbers from y_test.txt and y_train.txt to the front of the test and train data.
5. Rename Activity values using activity_labels.txt as a lookup table.
6. Merge rows of the test and training datasets together.
7. Sort all data by Subject value. Save data as **tidyData.txt**.
8. Generate average of each variable for each activity and each subject. Save data as **tidyMean.txt**.

About the Output Data
---------------------
#### tidyData.txt

+ **Description**: Contains time and frequency domain data for all subjects and activities.
+ **Observations**: 10299
+ **Variables**: 68

#### tidyMean.txt

+ **Description**: Contains average data of time and frequency domain variables for each activity for each subject.
+ **Observations**: 180
+ **Variables**: 68

Variables
---------

All variables in this codebook are relevant to both **tidyData.txt** and **tidyMean.txt**. Any differences between the two sets are specified within the indivitual variables.
---
####Subject

+ **Description**: Volunteer test subjects between the ages of 19 and 48.
+ **Type**: Numeric
+ **Value**: ID number assigned to inidividual volunteer
+ **Value range**: 1 to 30
+ **Source Data Set** 
  + **Training**: Sourced from the training set of data. 70% of subjects were randomly selected for the training set.
  + **Test**: Sourced from the test set of data. The remainder 30% of subjects were assigned to this set.

Value|Source Data Set|Value|Source Data Set|Value|Source Data Set
---|---|---|---|---|---
1|Training|11|Training|21|Training
2|Test|12|Test|22|Training
3|Training|13|Test|23|Training
4|Test|14|Training|24|Test
5|Training|15|Training|25|Training
6|Training|16|Training|26|Training
7|Training|17|Training|27|Training
8|Training|18|Test|28|Training
9|Test|19|Training|29|Training
10|Test|20|Test|30|Training

---
####Activity

+ **Description**: Different activities performed while wearing the smartphone. Conditions were manually assigned to the segments of data to which they were performed.
+ **Type**: Character
+ **Value**: Type of activity performed

Value|Description
---|---
WALKING|Data gathered during normal walking conditions
WALKING_UPSTAIRS|Data gathered while walking upstairs
WALKING_DOWNSTAIRS|Data gatheres while walking downstairs
SITTING|Data gatheres while sitting
STANDING|Data gathered while standing
LAYING |Data gathered while laying down

**Processed Data Notes**
+ *tidyMean.txt* will contain a single mean value for each activity per subject.
+ *tidyData.txt* will contain the full gathered dataset. Activities will cover the full time series of the variables associated with them.

---
####tBodyAcc.mean.X

+ **Description**: Mean data gathered from the time domain body data along the X axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: X axis acceleration
  + **tidyMean.txt**: Average X axis acceleration for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyAcc.mean.Y

+ **Description**: Mean data gathered from the time domain body data along the Y axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Y axis acceleration
  + **tidyMean.txt**: Average Y axis acceleration for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyAcc.mean.Z

+ **Description**: Mean data gathered from the time domain body data along the Z axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Z axis acceleration
  + **tidyMean.txt**: Average Z axis acceleration for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tGravityAcc.mean.X

+ **Description**: Mean data gathered from the time domain gravity data along the X axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: X axis acceleration
  + **tidyMean.txt**: Average X axis acceleration for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tGravityAcc.mean.Y

+ **Description**: Mean data gathered from the time domain gravity data along the Y axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Y axis acceleration
  + **tidyMean.txt**: Average Y axis acceleration for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tGravityAcc.mean.Z

+ **Description**: Mean data gathered from the time domain gravity data along the Z axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Z axis acceleration
  + **tidyMean.txt**: Average Z axis acceleration for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyAccJerk.mean.X

+ **Description**: Mean data gathered from the jerk signal derived from time domain body data along the X axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: X axis acceleration jerk
  + **tidyMean.txt**: Average X axis acceleration jerk for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyAccJerk.mean.Y

+ **Description**: Mean data gathered from the jerk signal derived from time domain body data along the Y axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Y axis acceleration jerk
  + **tidyMean.txt**: Average Y axis acceleration jerk for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyAccJerk.mean.Z

+ **Description**: Mean data gathered from the jerk signal derived from time domain body data along the Z axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Z axis acceleration jerk
  + **tidyMean.txt**: Average Z axis acceleration jerk for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyGyro.mean.X

+ **Description**: Mean data gathered from the time domain body data along the X axis of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: X axis angular velocity
  + **tidyMean.txt**: Average X axis angular velocity for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyGyro.mean.Y

+ **Description**: Mean data gathered from the time domain body data along the Y axis of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Y axis angular velocity
  + **tidyMean.txt**: Average Y axis angular velocity for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyGyro.mean.Z

+ **Description**: Mean data gathered from the time domain body data along the Z axis of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Z axis angular velocity
  + **tidyMean.txt**: Average Z axis angular velocity for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyGyroJerk.mean.X

+ **Description**: Mean data gathered from the jerk signal derived from the time domain body data along the X axis of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: X axis angular velocity jerk
  + **tidyMean.txt**: Average X axis angular velocity jerk for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyGyroJerk.mean.Y

+ **Description**: Mean data gathered from the jerk signal derived from the time domain body data along the Y axis of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Y axis angular velocity jerk
  + **tidyMean.txt**: Average Y axis angular velocity jerk for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyGyroJerk.mean.Z

+ **Description**: Mean data gathered from the jerk signal derived from the time domain body data along the Z axis of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Z axis angular velocity jerk
  + **tidyMean.txt**: Average Z axis angular velocity jerk for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyAccMag.mean

+ **Description**: Mean data gathered from the magnitude derived from the time domain body data of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Acceleration magnitude
  + **tidyMean.txt**: Average acceleration magnitude for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tGravityAccMag.mean

+ **Description**: Mean data gathered from the magnitude derived from the time domain gravity data of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Acceleration magnitude
  + **tidyMean.txt**: Average acceleration magnitude for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyAccJerkMag.mean

+ **Description**: Mean data gathered from the magnitude of jerk derived from the time domain body data of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Acceleration magnitude of jerk
  + **tidyMean.txt**: Average acceleration magnitude of jerk for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyGyroMag.mean

+ **Description**: Mean data gathered from the magnitude derived from the time domain body data of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Angular velocity magnitude
  + **tidyMean.txt**: Average angular velocity magnitude for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyGyroJerkMag.mean

+ **Description**: Mean data gathered from the magnitude of jerk derived from the time domain body data of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Angular velocity magnitude of jerk
  + **tidyMean.txt**: Average angular velocity magnitude of jerk for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyAcc.mean.X

+ **Description**: Mean data gathered from the frequency domain body data along the X axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: X axis acceleration (FFT)
  + **tidyMean.txt**: Average X axis acceleration (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyAcc.mean.Y

+ **Description**: Mean data gathered from the frequency domain body data along the Y axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Y axis acceleration (FFT)
  + **tidyMean.txt**: Average Y axis acceleration (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyAcc.mean.Z

+ **Description**: Mean data gathered from the frequency domain body data along the Z axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Z axis acceleration (FFT)
  + **tidyMean.txt**: Average Z axis acceleration (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyAccJerk.mean.X

+ **Description**: Mean data gathered from the jerk signal derived from frequency domain body data along the X axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: X axis acceleration jerk (FFT)
  + **tidyMean.txt**: Average X axis acceleration jerk (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyAccJerk.mean.Y

+ **Description**: Mean data gathered from the jerk signal derived from frequency domain body data along the Y axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Y axis acceleration jerk (FFT)
  + **tidyMean.txt**: Average Y axis acceleration jerk (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyAccJerk.mean.Z

+ **Description**: Mean data gathered from the jerk signal derived from frequency domain body data along the Z axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Z axis acceleration jerk (FFT)
  + **tidyMean.txt**: Average Z axis acceleration jerk (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyGyro.mean.X

+ **Description**: Mean data gathered from the frequency domain body data along the X axis of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: X axis angular velocity (FFT)
  + **tidyMean.txt**: Average X axis angular velocity (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyGyro.mean.Y         

+ **Description**: Mean data gathered from the frequency domain body data along the Y axis of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Y axis angular velocity (FFT)
  + **tidyMean.txt**: Average Y axis angular velocity (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyGyro.mean.Z

+ **Description**: Mean data gathered from the frequency domain body data along the Z axis of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Z axis angular velocity (FFT)
  + **tidyMean.txt**: Average Z axis angular velocity (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyAccMag.mean

+ **Description**: Mean data gathered from the magnitude derived from the frequency domain body data of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Acceleration magnitude (FFT)
  + **tidyMean.txt**: Average acceleration magnitude (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyAccJerkMag.mean

+ **Description**: Mean data gathered from the magnitude of jerk derived from the frequency domain body data of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Acceleration magnitude of jerk (FFT)
  + **tidyMean.txt**: Average acceleration magnitude of jerk (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyGyroMag.mean

+ **Description**: Mean data gathered from the magnitude derived from the frequency domain body data of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Angular velocity magnitude (FFT)
  + **tidyMean.txt**: Average angular velocity magnitude (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyGyroJerkMag.mean

+ **Description**: Mean data gathered from the magnitude of jerk derived from the frequency domain body data of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Angular velocity magnitude of jerk (FFT)
  + **tidyMean.txt**: Average angular velocity magnitude of jerk (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyAcc.std.X

+ **Description**: Standard deviation data gathered from the time domain body data along the X axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: X axis acceleration
  + **tidyMean.txt**: Average X axis acceleration for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyAcc.std.Y

+ **Description**: Standard deviation data gathered from the time domain body data along the Y axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Y axis acceleration
  + **tidyMean.txt**: Average Y axis acceleration for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyAcc.std.Z

+ **Description**: Standard deviation data gathered from the time domain body data along the Z axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Z axis acceleration
  + **tidyMean.txt**: Average Z axis acceleration for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tGravityAcc.std.X

+ **Description**: Standard deviation data gathered from the time domain gravity data along the X axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: X axis acceleration
  + **tidyMean.txt**: Average X axis acceleration for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tGravityAcc.std.Y

+ **Description**: Standard deviation data gathered from the time domain gravity data along the Y axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Y axis acceleration
  + **tidyMean.txt**: Average Y axis acceleration for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tGravityAcc.std.Z

+ **Description**: Standard deviation data gathered from the time domain gravity data along the Z axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Z axis acceleration
  + **tidyMean.txt**: Average Z axis acceleration for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyAccJerk.std.X

+ **Description**: Standard deviation data gathered from the jerk signal derived from time domain body data along the X axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: X axis acceleration jerk
  + **tidyMean.txt**: Average X axis acceleration jerk for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyAccJerk.std.Y

+ **Description**: Standard deviation data gathered from the jerk signal derived from time domain body data along the Y axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Y axis acceleration jerk
  + **tidyMean.txt**: Average Y axis acceleration jerk for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyAccJerk.std.Z

+ **Description**: Standard deviation data gathered from the jerk signal derived from time domain body data along the Z axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Z axis acceleration jerk
  + **tidyMean.txt**: Average Z axis acceleration jerk for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyGyro.std.X

+ **Description**: Standard deviation data gathered from the time domain body data along the X axis of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: X axis angular velocity
  + **tidyMean.txt**: Average X axis angular velocity for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyGyro.std.Y

+ **Description**: Standard deviation data gathered from the time domain body data along the Y axis of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Y axis angular velocity
  + **tidyMean.txt**: Average Y axis angular velocity for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyGyro.std.Z

+ **Description**: Standard deviation data gathered from the time domain body data along the Z axis of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Z axis angular velocity
  + **tidyMean.txt**: Average Z axis angular velocity for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyGyroJerk.std.X

+ **Description**: Standard deviation data gathered from the jerk signal derived from the time domain body data along the X axis of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: X axis angular velocity jerk
  + **tidyMean.txt**: Average X axis angular velocity jerk for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyGyroJerk.std.Y

+ **Description**: Standard deviation data gathered from the jerk signal derived from the time domain body data along the Y axis of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Y axis angular velocity jerk
  + **tidyMean.txt**: Average Y axis angular velocity jerk for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyGyroJerk.std.Z

+ **Description**: Standard deviation data gathered from the jerk signal derived from the time domain body data along the Z axis of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Z axis angular velocity jerk
  + **tidyMean.txt**: Average Z axis angular velocity jerk for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyAccMag.std

+ **Description**: Standard deviation data gathered from the magnitude derived from the time domain body data of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Acceleration magnitude
  + **tidyMean.txt**: Average acceleration magnitude for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tGravityAccMag.std

+ **Description**: Standard deviation data gathered from the magnitude derived from the time domain gravity data of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Acceleration magnitude
  + **tidyMean.txt**: Average acceleration magnitude for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyAccJerkMag.std

+ **Description**: Standard deviation data gathered from the magnitude of jerk derived from the time domain body data of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Acceleration magnitude of jerk
  + **tidyMean.txt**: Average acceleration magnitude of jerk for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyGyroMag.std

+ **Description**: Standard deviation data gathered from the magnitude derived from the time domain body data of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Angular velocity magnitude
  + **tidyMean.txt**: Average angular velocity magnitude for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyGyroJerkMag.std

+ **Description**: Standard deviation data gathered from the magnitude of jerk derived from the time domain body data of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Angular velocity magnitude of jerk
  + **tidyMean.txt**: Average angular velocity magnitude of jerk for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyAcc.std.X

+ **Description**: Standard deviation data gathered from the frequency domain body data along the X axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: X axis acceleration (FFT)
  + **tidyMean.txt**: Average X axis acceleration (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyAcc.std.Y

+ **Description**: Standard deviation data gathered from the frequency domain body data along the Y axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Y axis acceleration (FFT)
  + **tidyMean.txt**: Average Y axis acceleration (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyAcc.std.Z

+ **Description**: Standard deviation data gathered from the frequency domain body data along the Z axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Z axis acceleration (FFT)
  + **tidyMean.txt**: Average Z axis acceleration (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyAccJerk.std.X

+ **Description**: Standard deviation data gathered from the jerk signal derived from frequency domain body data along the X axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: X axis acceleration jerk (FFT)
  + **tidyMean.txt**: Average X axis acceleration jerk (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyAccJerk.std.Y

+ **Description**: Standard deviation data gathered from the jerk signal derived from frequency domain body data along the Y axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Y axis acceleration jerk (FFT)
  + **tidyMean.txt**: Average Y axis acceleration jerk (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyAccJerk.std.Z

+ **Description**: Standard deviation data gathered from the jerk signal derived from frequency domain body data along the Z axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Z axis acceleration jerk (FFT)
  + **tidyMean.txt**: Average Z axis acceleration jerk (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyGyro.std.X

+ **Description**: Standard deviation data gathered from the frequency domain body data along the X axis of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: X axis angular velocity (FFT)
  + **tidyMean.txt**: Average X axis angular velocity (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyGyro.std.Y

+ **Description**: Standard deviation data gathered from the frequency domain body data along the Y axis of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Y axis angular velocity (FFT)
  + **tidyMean.txt**: Average Y axis angular velocity (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyGyro.std.Z

+ **Description**: Standard deviation data gathered from the frequency domain body data along the Z axis of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Z axis angular velocity (FFT)
  + **tidyMean.txt**: Average Z axis angular velocity (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyAccMag.std

+ **Description**: Standard deviation data gathered from the magnitude derived from the frequency domain body data of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Acceleration magnitude (FFT)
  + **tidyMean.txt**: Average acceleration magnitude (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyAccJerkMag.std

+ **Description**: Standard deviation data gathered from the magnitude of jerk derived from the frequency domain body data of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Acceleration magnitude of jerk (FFT)
  + **tidyMean.txt**: Average acceleration magnitude of jerk (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyGyroMag.std

+ **Description**: Standard deviation data gathered from the magnitude derived from the frequency domain body data of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Angular velocity magnitude (FFT)
  + **tidyMean.txt**: Average angular velocity magnitude (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyGyroJerkMag.std

+ **Description**: Standard deviation data gathered from the magnitude of jerk derived from the frequency domain body data of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Angular velocity magnitude of jerk (FFT)
  + **tidyMean.txt**: Average angular velocity magnitude of jerk (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz
