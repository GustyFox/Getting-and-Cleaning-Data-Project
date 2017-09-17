library(plyr)

# 1. Download data
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

# Unzip data to directory
unzip(zipfile="./data/Dataset.zip",exdir="./data")


# 2. Merges the training and the test sets to create one data set:


      Fst_train <- read.table("./data/UCI HAR Dataset/train/Fst_train.txt")
      Snd_train <- read.table("./data/UCI HAR Dataset/train/Snd_train.txt")
      subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

      Fst_test <- read.table("./data/UCI HAR Dataset/test/Fst_test.txt")
      Snd_test <- read.table("./data/UCI HAR Dataset/test/Snd_test.txt")
      subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
      
      features <- read.table('./data/UCI HAR Dataset/features.txt')

      activityLabels = read.table('./data/UCI HAR Dataset/activity_labels.txt')
      
      colnames(Fst_train) <- features[,2] 
      colnames(Snd_train) <-"activityId"
      colnames(subject_train) <- "subjectId"
      
      colnames(Fst_test) <- features[,2] 
      colnames(Snd_test) <- "activityId"
      colnames(subject_test) <- "subjectId"
      
      colnames(activityLabels) <- c('activityId','activityType')
      
  #  Merging 
      mrg_train <- cbind(Snd_train, subject_train, Fst_train)
      mrg_test <- cbind(Snd_test, subject_test, Fst_test)
      BindAllInOne <- rbind(mrg_train, mrg_test)
      
# 3. Extracts only the measurements on the mean and standard deviation for each measurement with appropriate names
  

      colNames <- colnames(BindAllInOne)
      

      mean_and_std <- (grepl("activityId" , colNames) | 
                       grepl("subjectId" , colNames) | 
                       grepl("mean.." , colNames) | 
                       grepl("std.." , colNames) )
      
      setForMeanAndStd <- BindAllInOne[ , mean_and_std == TRUE]
      
# 3.1 Uses descriptive activity names to name the activities in the data set
      setWithActivityNames <- merge(setForMeanAndStd, activityLabels,
                                   by='activityId', all.x=TRUE)
      
     
# 4. From the data set in step 4, creates a second tidy data set with the average of each variable for each activity and each subject.
      
      MyTidySet <- aggregate(. ~subjectId + activityId, setWithActivityNames, mean)
      MyTidySet <- MyTidySet[order(MyTidySet$subjectId, MyTidySet$activityId),]
      
      write.table(MyTidySet, "MyTidySet.txt", row.name=FALSE)
        
      
      
      
      
      
      
      
      
      
