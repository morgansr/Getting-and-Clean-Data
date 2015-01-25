## Getting and cleaning data course project
## Script to create a tidy data set from the data available  at 
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Data is assumed to be in the working directory

# Load the test and train data sets, the ys (integer codes for activities), the subject labels, the activity labels, and the variable names
print('Loading data...')
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", nrows = 3000)
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", nrows = 7500)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", nrows = 3000)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", nrows = 7500)
sub_test <- read.table("UCI HAR Dataset/test/subject_test.txt", nrows = 3000, col.names = "subject")
sub_train <- read.table("UCI HAR Dataset/train/subject_train.txt", nrows = 7500, col.names = "subject")
act_lab <- read.table("UCI HAR Dataset/activity_labels.txt")
feats <- read.table("UCI HAR Dataset/features.txt")

# Combine the test and train data into a single data set
print('Cleaning data...')
all_xs <- rbind(x_test, x_train)
all_ys <- rbind(y_test, y_train)
all_subs <- rbind(sub_test, sub_train)

# Extract just the measurements of standard deviation and mean
stds <- grep("std()", feats$V2, fixed = TRUE)
means <- grep("mean()", feats$V2, fixed = TRUE)
means_and_stds <- sort(union(stds, means))
data_set <- all_xs[means_and_stds]

# Apply the variable names to the data set
colnames(data_set) <- feats$V2[means_and_stds]

# Use descriptive activity names from activity labels to name the activities in the data set
data_set$activity <- act_lab[all_ys$V1, 2]
data_set$subject <- all_subs$subject

# Write to file
print('Writing data...')
write.table(data_set, file = "UCI_HAR_tidy.txt", row.name=FALSE )

# Create a second tidy data set with the average of each variable for each activity and each subject
print('Creating and writing second data set...')
tidy_set <- data.frame(cbind(colnames(dataset[1:66]),
    sapply(split(dataset[1:66],dataset$activity),colMeans),
    sapply(split(dataset[1:66],dataset$subject),colMeans)))
colnames(tidy_set)[1] <- "Measurement"
write.table(tidy_set, file = "UCI_HAR_averages_tidy.txt", row.name=FALSE )



