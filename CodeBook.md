### Transformations

1.	The feature vector labels are first read from the features.txt file. However, not all the labels are valid data frame headers. Therefore, the read labels are transformed to valid descriptive header names.
2.	The training data in "train\X_train.txt" file and the test data in the "test\X_test.txt" file are read separately into two data sets with headers set to the processed feature vector labels in the previous step.
3.	The corresponding training data and test data activity class labels are read into to separate vectors from the "train\y_train.txt" and "test\y_test.txt" files, respectively.
4. 	The mapping between the activity name and class label found in file "activity_labels.txt" is used to map the class labels in the previously read vectors to descriptive activity names.
5.	Each of the processed activity names vector is added to corresponding data set, i.e, either training data set or test data set, where the newly added column is names "activity".
6.	The training data and test data corresponding subjects are read into two separate vectors from files "train\subject_train.txt" and "test\subject_test.txt", respectively.
7.	Each of the subjects vector is added to corresponding data set, i.e, either training data set or test data set, where the newly added column is names "subject".
8.	The processed training data and test data are merges into a single data set.
9.	A subset of the merged data set is created by extracting measurements on the mean and standard deviation for each measurement.
10. A new independent tidy data set is created with the average of each variable for each activity-subject pair. The new data is named "summary".

### Variables description

The "summary" data set has the following variables:
[1]	"activity": contains the activity names                           
[2]	"subject": Each row identifies the subject who performed the activity. Its range is from 1 to 30 
Each of the following variables represent the average of all the corresponding measurements whose activity-subject pair value equals to this observations' activity-subject pair value. The corresponding measurements are those in the "features.txt" file.                          
[3-5] "tBodyAcc.mean...[X|Y|Z].average"                   
[6-8] "tBodyAcc.std...[X|Y|Z].average"                     
[9-11] "tGravityAcc.mean...[X|Y|Z].average"              
[12-14] "tGravityAcc.std...[X|Y|Z].average"                
[15-17] "tBodyAccJerk.mean...[X|Y|Z].average"            
[18-20] "tBodyAccJerk.std...[X|Y|Z].average"              
[21-23] "tBodyGyro.mean...[X|Y|Z].average"                  
[24-26] "tBodyGyro.std...[X|Y|Z].average"                   
[27-29] "tBodyGyroJerk.mean...[X|Y|Z].average"          
[30-32] "tBodyGyroJerk.std...[X|Y|Z].average"            
[33] "tBodyAccMag.mean...average"         
[34] "tBodyAccMag.std...average"          
[35] "tGravityAccMag.mean...average"      
[36] "tGravityAccMag.std...average"       
[37] "tBodyAccJerkMag.mean...average"     
[38] "tBodyAccJerkMag.std...average"      
[39] "tBodyGyroMag.mean...average"        
[40] "tBodyGyroMag.std...average"         
[41] "tBodyGyroJerkMag.mean...average"    
[42] "tBodyGyroJerkMag.std...average"     
[43-45] "fBodyAcc.mean...[X|Y|Z].average"                    
[46-48] "fBodyAcc.std...[X|Y|Z].average"                      
[49-51] "fBodyAccJerk.mean...[X|Y|Z].average"            
[52-54] "fBodyAccJerk.std...[X|Y|Z].average"              
[55-57] "fBodyGyro.mean...[X|Y|Z].average"                  
[58-60] "fBodyGyro.std...[X|Y|Z].average"                   
[61] "fBodyAccMag.mean...average"         
[62] "fBodyAccMag.std...average"          
[63] "fBodyBodyAccJerkMag.mean...average" 
[64] "fBodyBodyAccJerkMag.std...average"  
[65] "fBodyBodyGyroMag.mean...average"    
[66] "fBodyBodyGyroMag.std...average"     
[67] "fBodyBodyGyroJerkMag.mean...average"
[68] "fBodyBodyGyroJerkMag.std...average"