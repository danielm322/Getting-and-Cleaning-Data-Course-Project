# 1. Merges the training and the test sets to create one data set.
# Reading from files

setwd("Getclean/")

if (!file.exists("dataset.zip")){
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
    download.file(fileURL, "dataset.zip")
} 

if (!file.exists("UCI HAR Dataset")) { 
    unzip("dataset.zip") 
}

dtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
dtrainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
dtrainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
dtrain <- cbind(dtrainSubjects, dtrainActivities, dtrain)

dtest <- read.table("UCI HAR Dataset/test/X_test.txt")
dtestActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
dtestSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
dtest <- cbind(dtestSubjects, dtestActivities, dtest)

mergedd <- rbind(dtrain,dtest)

# 2. Extracts only the measurements on the mean and standard deviation 
# for each measurement.
names1 <- read.table("UCI HAR Dataset/features.txt")
names1 <- as.character(names1$V2)


selFeats <- grep(".*mean.*|.*std.*", names1)
selFeats.nam <- names1[selFeats]
selFeats.nam = gsub('-mean', 'Mean', selFeats.nam)
selFeats.nam = gsub('-std', 'Std', selFeats.nam)
selFeats.nam <- gsub('[-()]', '', selFeats.nam)

selFeats <- c(1,2,selFeats+2) #This adds the subject and activity id to index
selFeats.nam <- c("subject", "activity", selFeats.nam)

mergedd <- mergedd[, selFeats]
names(mergedd) <- c(selFeats.nam)

# 3. Uses descriptive activity names to name the activities in the data set
acts <- read.table("UCI HAR Dataset/activity_labels.txt")
acts$V2 <- as.character(acts$V2)
mergedd$activity <- factor(mergedd$activity, levels = acts[,1], labels = acts[,2])

# 4. Appropriately labels the data set with descriptive variable names.
names(mergedd) <- gsub('Acc','Acceleration',names(mergedd))
names(mergedd) <- gsub('Mag','Magnitude',names(mergedd))
names(mergedd) <- gsub('Gyro','Gyroscope',names(mergedd))
names(mergedd) <- gsub('^t','time',names(mergedd))
names(mergedd) <- gsub('^f','frequency',names(mergedd))
names(mergedd)

mergedd$subject <- as.character(mergedd$subject)
mergedd$subject[mergedd$subject == 1] <- "Participant 1"
mergedd$subject[mergedd$subject == 2] <- "Participant 2"
mergedd$subject[mergedd$subject == 3] <- "Participant 3"
mergedd$subject[mergedd$subject == 4] <- "Participant 4"
mergedd$subject[mergedd$subject == 5] <- "Participant 5"
mergedd$subject[mergedd$subject == 6] <- "Participant 6"
mergedd$subject[mergedd$subject == 7] <- "Participant 7"
mergedd$subject[mergedd$subject == 8] <- "Participant 8"
mergedd$subject[mergedd$subject == 9] <- "Participant 9"
mergedd$subject[mergedd$subject == 10] <- "Participant 10"
mergedd$subject[mergedd$subject == 11] <- "Participant 11"
mergedd$subject[mergedd$subject == 12] <- "Participant 12"
mergedd$subject[mergedd$subject == 13] <- "Participant 13"
mergedd$subject[mergedd$subject == 14] <- "Participant 14"
mergedd$subject[mergedd$subject == 15] <- "Participant 15"
mergedd$subject[mergedd$subject == 16] <- "Participant 16"
mergedd$subject[mergedd$subject == 17] <- "Participant 17"
mergedd$subject[mergedd$subject == 18] <- "Participant 18"
mergedd$subject[mergedd$subject == 19] <- "Participant 19"
mergedd$subject[mergedd$subject == 20] <- "Participant 20"
mergedd$subject[mergedd$subject == 21] <- "Participant 21"
mergedd$subject[mergedd$subject == 22] <- "Participant 22"
mergedd$subject[mergedd$subject == 23] <- "Participant 23"
mergedd$subject[mergedd$subject == 24] <- "Participant 24"
mergedd$subject[mergedd$subject == 25] <- "Participant 25"
mergedd$subject[mergedd$subject == 26] <- "Participant 26"
mergedd$subject[mergedd$subject == 27] <- "Participant 27"
mergedd$subject[mergedd$subject == 28] <- "Participant 28"
mergedd$subject[mergedd$subject == 29] <- "Participant 29"
mergedd$subject[mergedd$subject == 30] <- "Participant 30"
mergedd$subject <- as.factor(mergedd$subject)

# 5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
library(reshape2)
mergedd.melted <- melt(mergedd, id = c("subject", "activity"))
mergedd.mean <- dcast(mergedd.melted, subject + activity ~ variable, mean)

write.table(mergedd.mean, "tidy.txt", row.names = FALSE, quote = FALSE)