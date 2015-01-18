run_analysis <- function() {
    ## Merges the training and the test sets to create one data set.
    test_rows <- system("wc -l test/X_test.txt")
    train_rows <- system("wc -l train/X_train.txt")
    x_test <- read.table("test/X_test.txt", nrows = test_rows)
    x_train <- read.table("train/X_train.txt", nrows = train_rows)
    all_tog <- rbind(x_test, x_train)
    
    ## Extracts only the measurements on the mean and standard deviation for each measurement.
    # Find features with mean() or std() in the column name. Extract those columns
    feats <- fread("features.txt")
    stds <- grep("std()", feats$V2, fixed = TRUE)
    means <- grep("means()", feats$V2, fixed = TRUE)
    stds_means <- sort(union(stds, means))
    
    
    
    ## Uses descriptive activity names to name the activities in the data set
    ## Appropriately labels the data set with descriptive variable names. 
    ## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

    


}