run_analysis()
==============
The run_analysis() function is contained in the run_analysis.R script contained within this repository. The purpose of this script is to load in accelerometer and gyroscopic signal data.

About the Data
--------------
The data required for this function comes from the University of California, Irvine Machine Learning Repository. The dataset itself is from a project called **Human Activity Recognition Using Smartphones Data Set**. From the data set README:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Data Used for This Assignment
-----------------------------
All of the data within this set was used with the exception of the Inertial Signals data within the Test and Train dataset. This decision was made because it wasn't explicit within the project requirements. Inertial Signals data do not have matching dimensions to the rest of the required data. Resolving this is outside the scope of the project and the function run_analysis().

The following data does get imported into the function and tidied up:

+ features.txt: List of all features.
+ activity_labels.txt: Links the class labels with their activity name.
+ train/X_train.txt: Training set.
+ train/y_train.txt: Training labels.
+ test/X_test.txt: Test set.
+ test/y_test.txt: Test labels.
+ train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample. 
+ test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample.

### Features
For the purpose of this assignment, only features identified with either mean() or std() will be included in the tidy data set. This will reduce the overall features included in the data from 561 objects to 66. This does not include any meanFreq() features.

The Variables
-------------
During the course of manipulating the data in order to tidy it up, the function creates the following variables:

+ features: Contains data from features.txt.
+ activityLabels: Contains data from activity_labels.txt.
+ testSubjects: Contains data from subject_test.txt.
+ testActivities: Contains data from y_test.txt.
+ trainSubjects: Contains data from subject_train.txt.
+ trainActivities: Contains data from y_train.txt
+ testData: Contains data from X_test.txt. This data is manipulated during the course of the function to contain additional information from subjects and activities.
+ trainData: Contains data from X_train.txt. This data is manipulated during the course of the function to contain additional information from subjects and activities.
+ tidyData: Contains elements from all previous variables in an organized manner. It is organized by Subject.
+ tidyMean: Reduced tidy data set containing only the average of each variable for each activity and each subject. This data is the important piece required to satisfy the project rubric.

Function Breakdown
------------------
This function contains multiple components.

+ Data verification: Confirms if the right data exists to tidy. If not, then the data will be downloaded. Note that while this code may function on all operating systems, it has only been tested on Windows.
+ Data loading: Reads in all text data from the file system into memory.
+ Reshaping and merging: Manipulates the data into a final tidy data set.
+ Averaging: Creates the final tidy data set required for the project.

Note that in the actual function, messages and comments are there to provide more information to whoever is using and analyzing the code. These will not be included in the breakdown in this README.

### Data Verification
This part of the function confirms whether the UCI HAR Dataset folder exists. If it doesn't, then the required file will be downloaded and unzipped. 

        if(!file.exists("./UCI HAR Dataset")) {
                download.file("http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
                              "temp.zip")
                unzip("temp.zip")    
        }
