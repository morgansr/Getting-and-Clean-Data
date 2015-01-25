run_analysis <- function() {
    
    ## Merge the training and the test sets to create one data set.
    print('Loading test data...')
    x_test <- read.table("test/X_test.txt", nrows = 3000)
    print('Loading training data...')
    x_train <- read.table("train/X_train.txt", nrows = 7500)
    all_xs <- rbind(x_test, x_train)
    
    ## Extracts only the measurements on the mean and standard deviation for each measurement.
    # Find features with mean() or std() in the column name. Extract those columns from all_xs
    feats <- read.table("features.txt")
    stds <- grep("std()", feats$V2, fixed = TRUE)
    means <- grep("mean()", feats$V2, fixed = TRUE)
    means_and_stds <- sort(union(stds, means))
    data_set <- all_xs[means_and_stds]
    
    ## Uses descriptive activity names to name the activities in the data set
    # Bring in y_test and y_train, then replace numbers with names from "activity_labels.txt"
    
    act_lab <- read.table("activity_labels.txt")
    
    y_test <- read.table("test/y_test.txt", nrows = 3000)
    y_train <- read.table("train/y_train.txt")
    all_ys <- rbind(y_test, y_train)
    
    sub_test <- read.table("test/subject_test.txt", nrows = 3000, col.names = "subjectID")
    sub_train <- read.table("train/subject_train.txt", nrows = 7500, col.names = "subjectID")
    all_subs <- rbind(sub_test, sub_train)
        
    ## Appropriately labels the data set with descriptive variable names. 
    #  Subset the list of features, and apply them as column names
    colnames(data_set) <- feats$V2[means_and_stds]
    data_set$activityLabel <- act_lab[all_ys$V1, 2]
    data_set$subjectID <- all_subs$subjectID
    
    str(data_set)
    
    ## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


    data_set
}