Codebook
========

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
*tidyMean.txt* will contain a single mean value for each activity per subject.
*tidyData.txt* will contain the full gathered dataset. Activities will cover the full time series of the variables associated with them.

---
####tBodyAcc.mean.X

+ **Description**: Mean variables from the time domain body acceleration data along the X axis of the accelerometer 
+ **Type**: numeric
+ **Value**
  + **tidyData.txt**: Magnitude
  + **tidyMean.txt**: Average magnitude for activity
+ **Value Range**: -1:1 (normalized)
+ **Capture Frequency**: 50 Hz

---
####tBodyAcc.mean.Y

---
####tBodyAcc.mean.Z

---
####tGravityAcc.mean.X

---
####tGravityAcc.mean.Y

---
####tGravityAcc.mean.Z

---
####tBodyAccJerk.mean.X

---
####tBodyAccJerk.mean.Y

---
####tBodyAccJerk.mean.Z

---
####tBodyGyro.mean.X

---
####tBodyGyro.mean.Y

---
####tBodyGyro.mean.Z

---
####tBodyGyroJerk.mean.X

---
####tBodyGyroJerk.mean.Y

---
####tBodyGyroJerk.mean.Z

---
####tBodyAccMag.mean

---
####tGravityAccMag.mean

---
####tBodyAccJerkMag.mean

---
####tBodyGyroMag.mean

---
####tBodyGyroJerkMag.mean

---
####fBodyAcc.mean.X

---
####fBodyAcc.mean.Y

---
####fBodyAcc.mean.Z

---
####fBodyAccJerk.mean.X

---
####fBodyAccJerk.mean.Y

---
####fBodyAccJerk.mean.Z

---
####fBodyGyro.mean.X

---
####fBodyGyro.mean.Y         

---
####fBodyGyro.mean.Z

---
####fBodyAccMag.mean

---
####fBodyBodyAccJerkMag.mean

---
####fBodyBodyGyroMag.mean

---
####fBodyBodyGyroJerkMag.mean

---
####tBodyAcc.std.X

---
####tBodyAcc.std.Y

---
####tBodyAcc.std.Z

---
####tGravityAcc.std.X

---
####tGravityAcc.std.Y

---
####tGravityAcc.std.Z

---
####tBodyAccJerk.std.X

---
####tBodyAccJerk.std.Y

---
####tBodyAccJerk.std.Z

---
####tBodyGyro.std.X

---
####tBodyGyro.std.Y

---
####tBodyGyro.std.Z

---
####tBodyGyroJerk.std.X

---
####tBodyGyroJerk.std.Y

---
####tBodyGyroJerk.std.Z

---
####tBodyAccMag.std

---
####tGravityAccMag.std

---
####tBodyAccJerkMag.std

---
####tBodyGyroMag.std

---
####tBodyGyroJerkMag.std

---
####fBodyAcc.std.X

---
####fBodyAcc.std.Y

---
####fBodyAcc.std.Z

---
####fBodyAccJerk.std.X

---
####fBodyAccJerk.std.Y

---
####fBodyAccJerk.std.Z

---
####fBodyGyro.std.X

---
####fBodyGyro.std.Y

---
####fBodyGyro.std.Z

---
####fBodyAccMag.std

---
####fBodyBodyAccJerkMag.std

---
####fBodyBodyGyroMag.std

---
####fBodyBodyGyroJerkMag.std
