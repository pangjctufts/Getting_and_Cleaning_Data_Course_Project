# run_analysis

# Read all the data
testData <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
testLabel <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

trainData <- read.table("./UCI HAR Dataset/train/X_train.txt",header = FALSE)
trainLabel <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
trainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)

# Step 1
Data <- rbind(cbind(testData,testLabel,testSubject),cbind(trainData,trainLabel,trainSubject))

# Step 2
features <- read.table("./UCI HAR Dataset/features.txt",header = FALSE,stringsAsFactors=FALSE)[,2]
names(Data) <- c(features,"Label", "Subject")
featuresSub <- features[grep("mean\\(\\)|std\\(\\)",features)]
DataSub <- Data[,c(featuresSub,"Label", "Subject")]

# Step 3
activityLabel <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
Data$Label<- activityLabel[Data$Label]
DataSub$Label<- activityLabel[DataSub$Label]

# Step 4
names(Data) <- gsub("^t","time", names(Data))
names(Data) <- gsub("^f","FFT", names(Data))
names(DataSub) <- names(Data)


# Step 5
meanVals <- aggregate(DataSub[,1:(ncol(DataSub)-2)], by = list(subject = DataSub$Subject,label = DataSub$Label),mean)
write.table(meanVals,"tidyData.txt",row.name = FALSE)
