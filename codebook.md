# Code Book
two data sets are created and written to text files by the script run_analysis.R
* UCI_HAR_tidy.txt
* UCI_HAR_averages_tidy.txt

## UCI_HAR_tidy.txt
This file contains all the measurements from the original data set that had either std() or mean() in the measurement name. There were 66 variables of this type. Two additional columns, 'activity' and 'subject' identify what activity was being measured and which subject was being measured.
1. tBodyAcc-mean()-X
2. tBodyAcc-mean()-Y
3. tBodyAcc-mean()-Z
4. tBodyAcc-std()-X
5. tBodyAcc-std()-Y
6. tBodyAcc-std()-Z
7. tGravityAcc-mean()-X
8. tGravityAcc-mean()-Y
9. tGravityAcc-mean()-Z
10. tGravityAcc-std()-X
11. tGravityAcc-std()-Y
12. tGravityAcc-std()-Z
13. tBodyAccJerk-mean()-X
14. tBodyAccJerk-mean()-Y
15. tBodyAccJerk-mean()-Z
16. tBodyAccJerk-std()-X
17. tBodyAccJerk-std()-Y
18. tBodyAccJerk-std()-Z
19. tBodyGyro-mean()-X
20. tBodyGyro-mean()-Y
21. tBodyGyro-mean()-Z
22. tBodyGyro-std()-X
23. tBodyGyro-std()-Y
24. tBodyGyro-std()-Z
25. tBodyGyroJerk-mean()-X
26. tBodyGyroJerk-mean()-Y
27. tBodyGyroJerk-mean()-Z
28. tBodyGyroJerk-std()-X
29. tBodyGyroJerk-std()-Y
30. tBodyGyroJerk-std()-Z
31. tBodyAccMag-mean()
32. tBodyAccMag-std()
33. tGravityAccMag-mean()
34. tGravityAccMag-std()
35. tBodyAccJerkMag-mean()
36. tBodyAccJerkMag-std()
37. tBodyGyroMag-mean()
38. tBodyGyroMag-std()
39. tBodyGyroJerkMag-mean()
40. tBodyGyroJerkMag-std()
41. fBodyAcc-mean()-X
42. fBodyAcc-mean()-Y
43. fBodyAcc-mean()-Z
44. fBodyAcc-std()-X
45. fBodyAcc-std()-Y
46. fBodyAcc-std()-Z
47. fBodyAccJerk-mean()-X
48. fBodyAccJerk-mean()-Y
49. fBodyAccJerk-mean()-Z
50. fBodyAccJerk-std()-X
51. fBodyAccJerk-std()-Y
52. fBodyAccJerk-std()-Z
53. fBodyGyro-mean()-X
54. fBodyGyro-mean()-Y
55. fBodyGyro-mean()-Z
56. fBodyGyro-std()-X
57. fBodyGyro-std()-Y
58. fBodyGyro-std()-Z
59. fBodyAccMag-mean()
60. fBodyAccMag-std()
61. fBodyBodyAccJerkMag-mean()
62. fBodyBodyAccJerkMag-std()
63. fBodyBodyGyroMag-mean()
64. fBodyBodyGyroMag-std()
65. fBodyBodyGyroJerkMag-mean()
66. fBodyBodyGyroJerkMag-std()
67. activity
  * one of six levels:
    1 WALKING
    2 WALKING_UPSTAIRS
    3 WALKING_DOWNSTAIRS
    4 SITTING
    5 STANDING
    6 LAYING
68. subject
  * Numeric ID from 1 to 30.

## UCI_HAR_averages.txt
This file contains the average for each measurement by each activity and by each subject. It wasn't clear if that was supposed to be one then the other, or both at once. That is, were we supposed to find the average for each variable for subject 1 as s/he walked, sat, walked upstairs, etc and repeat for each of the 30 subjects, or were we supposed to find the average for each subject accross all activities and then for each activity across subjects? this script does the former (though it used to do the latter, and that's actually the data set I submitted. Oops.) So as submitted, the columns are: "Measurement" "LAYING" "SITTING" "STANDING" "WALKING" "WALKING_DOWNSTAIRS" "WALKING_UPSTAIRS" "X1" "X2" "X3" "X4" "X5" "X6" "X7" "X8" "X9" "X10" "X11" "X12" "X13" "X14" "X15" "X16" "X17" "X18" "X19" "X20" "X21" "X22" "X23" "X24" "X25" "X26" "X27" "X28" "X29" "X30", while each of the 66 rows is the average of those variables where the subject or activity was equal to the column name.
