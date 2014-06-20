Codebook
========
This document provides additional information on the individual variables contained within the datasets that are written out by the run_analysis() function. For more information on this function, consult the README.md file contained in this package.

Source Data
-----------
+ **Organization**: University of California, Irvine - Center for Machine Learning and Intelligent Systems
+ **Project Site**: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Detail overview as of 6/19/2014 at 23:14 MDT
---|---|---|---|---|---
Data Set Characteristics: |Multivariate, Time-Series|Number of Instances:|10299|Area:|Computer
Attribute Characteristics:|N/A|Number of Attributes:|561|Date Donated|2012-12-10
Associated Tasks:|Classification, Clustering|Missing Values?|N/A|Number of Web Hits:|92762

Variables
---------
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
####fBodyBodyAccJerkMag.std

+ **Description**: Standard deviation data gathered from the magnitude of jerk derived from the frequency domain body data of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Acceleration magnitude of jerk (FFT)
  + **tidyMean.txt**: Average acceleration magnitude of jerk (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyBodyGyroMag.std

+ **Description**: Standard deviation data gathered from the magnitude derived from the frequency domain body data of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Angular velocity magnitude (FFT)
  + **tidyMean.txt**: Average angular velocity magnitude (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####fBodyBodyGyroJerkMag.std

+ **Description**: Standard deviation data gathered from the magnitude of jerk derived from the frequency domain body data of the gyroscope 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Angular velocity magnitude of jerk (FFT)
  + **tidyMean.txt**: Average angular velocity magnitude of jerk (FFT) for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz
