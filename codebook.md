# Code Book
two data sets are created and written to text files by the script run_analysis.R
* UCI_HAR_tidy.txt
* UCI_HAR_averages_tidy.txt

## UCI_HAR_tidy.txt
This file contains all the measurements from the original data set that had either std() or mean() in the measurement name. There were 66 variables of this type. Two additional columns, 'activity' and 'subject' identify what activity was being measured and which subject was being measured.

## UCI_HAR_averages.txt
This file contains the average for each measurement by each activity and by each subject. It wasn't clear if that was supposed to be one then the other, or both at once. That is, were we supposed to find the average for each variable for subject 1 as s/he walked, sat, walked upstairs, etc and repeat for each of the 30 subjects, or were we supposed to find the average for each subject accross all activities and then for each activity across subjects? this script does the former (though it used to do the latter, and that's actually the data set I submitted. Oops.
