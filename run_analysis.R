# read all the training data sets

train_set<-read.table("./UCI HAR Dataset/train/X_train.txt")
train_labels<-read.table("./UCI HAR Dataset/train/y_train.txt")
train_subject<-read.table("./UCI HAR Dataset/train/subject_train.txt")

# read all the test data sets
test_set<-read.table("./UCI HAR Dataset/test/X_test.txt")
test_labels <-read.table("./UCI HAR Dataset/test/y_test.txt")
test_subject<-read.table("./UCI HAR Dataset/test/subject_test.txt")

# Read all the features of the data sets
read_features<-read.table("./UCI HAR Dataset/features.txt")
read_activity<-read.table("./UCI HAR Dataset/activity_labels.txt")

# Set the column names of the data sets

colnames(train_labels)<-"activity"
colnames(train_subject)<-"subject"
colnames(test_labels)<-"activity"
colnames(test_subject)<-"subject"

featuresColNames<-as.matrix(read_features[2])
colnames(train_set)<-featuresColNames[,1]
colnames(test_set)<-featuresColNames[,1]

# Combine train and test data frames
com_train<-train_subject
com_train[,"activity"]<-train_labels
com_train[,featuresColNames[,1]]<-train_set

com_test<-test_subject
com_test[,"activity"]<-test_labels
com_test[,featuresColNames[,1]]<-test_set

# Merge train and test data frames
df<-merge(com_train,com_test,by.x="subject",by.y="subject",all=TRUE)

# Extract only the mean and std dev of all the measurements
toMatch <- c(".*mean\\(\\).", ".*std\\(\\).")
matches <- unique (grep(paste(toMatch,collapse="|"), featuresColNames[,1], value=TRUE))
newdf<-df[,matches]

# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive activity names. 



# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
tapply(df,df$activity.x,mean)
tapply(df,df$activity.y,mean)





