run_analysis <- function() {
        
        ## Checks if source file directory exists. If not, then the
        ## file is downloaded and unzipped.
        
        if(!file.exists("./UCI HAR Dataset")) {
                
                ## Download source data file from the web and saves temp zip
                
                message("Source data does not exist. Downloading now...")
                download.file("http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
                              "temp.zip")
                message("Unzipping temp.zip...")
                unzip("temp.zip")    
                
        }
        
        ## Read in all necesary raw datasets for tidying
        
        message("Reading features and class labels...")
        features <- read.table("./UCI HAR Dataset/features.txt",
                               colClasses = "character")
        activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt",
                                     colClasses = "character")
        
        ## Reformat column names to reduce instances of illegal characters
        ## Rename 
        
        features[,2] = gsub("meanFreq", "mFreq", features[,2])
        features[,2] = gsub("[(][)]", "", features[,2])
        
        message("Reading subject and activities data...")
        testSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt",
                                   colClasses = "numeric",
                                   col.names = "Subject")
        testActivities <- read.table("./UCI HAR Dataset/test/y_test.txt",
                                     colClasses = "character",
                                     col.names = 'Activity')
        trainSubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt",
                                    colClasses = "numeric",
                                    col.names = "Subject")
        trainActivities <- read.table("./UCI HAR Dataset/train/y_train.txt",
                                     colClasses = "character",
                                     col.names = "Activity")
                
        message("Reading test dataset...")
        testData <- read.table("./UCI HAR Dataset/test/X_test.txt",
                               col.names = features[,2])
        
        message("Reading train dataset...")
        trainData <- read.table("./UCI HAR Dataset/train/X_train.txt",
                                col.names = features[,2])
        
        message("Manipulating data...")    
        
        ## Set factors on Activity datasets

        testActivities <- factor(testActivities[,1], 
                                 labels = activityLabels[,2])
        trainActivities <- factor(trainActivities[,1], 
                                 labels = activityLabels[,2])
        
        ## Reshape data to only include mean() and std() data
        
        trainData <- trainData[,c(grep("mean", features[,2]),
                                  grep("std", features[,2]))]
        testData <- testData[,c(grep("mean", features[,2]),
                                grep("std", features[,2]))]
        
        ## Initial data merge and column naming (separate sets only)
        
        testData <- cbind(testSubjects, testActivities, testData)
        colnames(testData)[c(2)] <- "Activity"
        trainData <- cbind(trainSubjects, trainActivities, trainData)
        colnames(trainData)[c(2)] <- "Activity"
        
        ## Merge data
        
        tidyData <- rbind(testData, trainData)
        
        ## Organize dataset by subject number
        
        tidyData <- tidyData[order(tidyData$Subject),]
        
        message("Completed tidying of dataset.")
        
        ##
        ## The following section takes the tidy data set, then
        ## calculates the mean of all data columns based on the
        ## Activities for each subject.
        ##
        
        ## Generating means for data based on activities for each subject
        
        message("Generating dataset of averages...")
        tidyMean <- melt(tidyData, id.vars=c("Subject", "Activity"))
        tidyMean <- dcast(tidyMean, Subject + Activity ~ variable, mean)
        
        ## Writing data to file

        message("Writing 2 new datasets to file")
        write.table(tidyData, "tidyData.txt", sep=",", row.names = FALSE)
        write.table(tidyMean, "tidyMean.txt", sep=",", row.names = FALSE)
        message("Complete!")
}