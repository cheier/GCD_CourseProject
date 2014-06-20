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
+ Write out: Writes the tidy data to disk.

Note that in the actual function, messages and comments are there to provide more information to whoever is using and analyzing the code. These will not be included in the breakdown in this README.

### Data Verification
This part of the function confirms whether the UCI HAR Dataset folder exists. If it doesn't, then the required file will be downloaded and unzipped. While not an exhaustive test, it does cover most situations where the data may not be available. If there is an error in the actual data or missing files, delete or rename the "UCI HAR Dataset" folder in order to allow the verification code to download a fresh dataset.

        if(!file.exists("./UCI HAR Dataset")) {
                download.file("http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
                              "temp.zip")
                unzip("temp.zip")    
        }
### Data Loading
In this part of the process, all supporting data is loaded prior to the main data sets in order to aid in proper column labeling. The first files loaded are the *features* and *activity labels*.

        features <- read.table("./UCI HAR Dataset/features.txt",
                               colClasses = "character")
        activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt",
                                     colClasses = "character")

The *Features* data is then modified in order to rename *meanFreq* to *mFreq* in order to prevent the *meanFreq* features from being picked up in a text based search. The use of all round brackets are also removed. These among dashes are illegal characters in R, however, with the curly brackets, column names will include "..." within them. By eliminating the brackets, the dots are limited to 1 where dashes exist. I considered this to be acceptable in the column naming. There is also an error in the source data where some feature labels repeat "Body" twice. This is fixed for consistency.

        features[,2] = gsub("BodyBody", "Body", features[,2])
        features[,2] = gsub("meanFreq", "mFreq", features[,2])
        features[,2] = gsub("[(][)]", "", features[,2])
        
The rest of the support data is then loaded as is. Column names are added to the *Subject* data. This name gets passed through to the final dataset. This is not done with the *Activities* data because the column names don't stick with future processing. They will be added later.
        
        testSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt",
                                   colClasses = "numeric",
                                   col.names = "Subject")
        testActivities <- read.table("./UCI HAR Dataset/test/y_test.txt",
                                     colClasses = "character")
        trainSubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt",
                                    colClasses = "numeric",
                                    col.names = "Subject")
        trainActivities <- read.table("./UCI HAR Dataset/train/y_train.txt",
                                     colClasses = "character")
                                  
The *Train* and *Test* data is then loaded using the *Features* data in order to append column names to the imported data.

        testData <- read.table("./UCI HAR Dataset/test/X_test.txt",
                               col.names = features[,2])
        trainData <- read.table("./UCI HAR Dataset/train/X_train.txt",
                                col.names = features[,2])

### Reshaping and Merging
This portion of the code is preparing all imported data for merging, as well as the final process of merging all data together within a tidy data set.

The *Activities* data is converted to a factor using the activity labels. As the activities within the data only contain numbers, converting it to a factor allows all numbers to be descriptive labels within the data.

        testActivities <- factor(testActivities[,1], 
                                 labels = activityLabels[,2])
        trainActivities <- factor(trainActivities[,1], 
                                 labels = activityLabels[,2])
                                 
The *Test* and *Train* data is reduced in size. The use of grep() on the column portion of the data allows a search for the *mean* and *std* features to be pulled. This information is written back into the original variables, avoiding unnecessary additional data to be stored in memory.

        trainData <- trainData[,c(grep("mean", features[,2]),
                                  grep("std", features[,2]))]
        testData <- testData[,c(grep("mean", features[,2]),
                                grep("std", features[,2]))]

The *Test* and *Tidy* data get the *Subject* and *Activity* data appended to the front. The *Activity* name is then added to the appropriate column. The resulting data is then merged together into *tidyData*. This final tidy data set is then organized according to the *Subject* ID.

        testData <- cbind(testSubjects, testActivities, testData)
        colnames(testData)[c(2)] <- "Activity"
        trainData <- cbind(trainSubjects, trainActivities, trainData)
        colnames(trainData)[c(2)] <- "Activity"
        tidyData <- rbind(testData, trainData)
        tidyData <- tidyData[order(tidyData$Subject),]

### Averaging
This encompases the final step in the project in which the average for each variable for each activity and each subject needs to be calculated. This process significantly reduces the size of the end data. As the *tidyData* contains time series data, *Activity* information repeats quite a bit in each *Subject*. Averaging this data will output a single value per *Feature* per *Activity* per *Subject*.

The operating code creates a new *tidyMean* variable where the *tidyData* is melted from a wide set into a long set, including the ID variables for *Subject* and *Activity*. This intriduces a third and fourth column, *variables* and *value*. The *variables* column contains all of the *Features* from the data. The *value* is all of the rows for all of the *Features* contained per *Subject* and *Activity*. The data is then cast back into a wide format, executing a mean() on all of the *variables* that are part of *Subject* and *Activity*.

        tidyMean <- melt(tidyData, id.vars=c("Subject", "Activity"))
        tidyMean <- dcast(tidyMean, Subject + Activity ~ variable, mean)

### Write Out
In this case, I chose to write out both the tidy data and the averaged tidy data. I felt that there would be more value in using some of the tidy data for use in exploratory data analysis than the averaged data. To satisfy requirements for the project, the averaged data was written out as well.

The default fot the write.table() function is to include row names in the output file. This breaks the data alignment in the actual file. These functions are written in order to create comma separated data with no row names.

        write.table(tidyData, "tidyData.txt", sep=",", row.names = FALSE)
        write.table(tidyMean, "tidyMean.txt", sep=",", row.names = FALSE)

Reading In the Tidy Data
------------------------
For those who may be reviewing this assignment, the data was written out as a **.txt** file because a **.csv** file cannot be uploaded for the assignment. The above write.table() function does use comma separation, so the data can be read using the read.csv() function. Just a basic read will bring in the tidy data set with the required column names. You can use the following code to read and review the data output by run_analysis():

        tidyData <- read.csv("tidyData.txt")
        tidyMean <- read.csv("tidyMean.txt")