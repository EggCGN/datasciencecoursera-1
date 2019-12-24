# What is it for ?

It creates a summary of the samsung IoT dataset.

# How to run the script

Copy the folder **UCI HAR Dataset** from this [url](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) in the same repository as the run_analysis.R script.

Run the following command:
´´´bash
Rscript run_analysis.R
´´´
# Input

See available files on the input dataset.
* 'README.txt'
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
* 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
* 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

# Output

Returns a file called **mean\_by_subject\_by_activity.txt** that contains the mean of each physic metrics described in _feature\_info.txt_ by subject and activity.

The output contains the following metrics:

* Subject
* Activity
* TimeBodyAccelerationMeanX/Y/Z
* tGravityAccelerationMeanX/Y/Z
* TimeBodyAccelerationJerkMeanX/Y/Z 
* TimeBodyGyroMeanX/Y/Z
* TimeBodyGyroJerkMeanX/Y/Z
* TimeBodyAccelerationMagnitudeMean
* tGravityAccelerationMagnitudeMean
* TimeBodyAccelerationJerkMagnitudeMean
* TimeBodyGyroMagnitudeMean
* TimeBodyGyroJerkMagnitudeMean
* FrequencyBodyAccelerationMeanX/Y/Z
* FrequencyBodyAccelerationMeanFreqX/Y/Z
* FrequencyBodyAccelerationJerkMeanX/Y/Z
* FrequencyBodyAccelerationJerkMeanFreqX/Y/Z
* FrequencyBodyGyroMeanX/Y/Z
* FrequencyBodyGyroMeanFreqX/Y/Z
* FrequencyBodyAccelerationMagnitudeMean
* FrequencyBodyAccelerationMagnitudeMeanFreq
* FrequencyBodyBodyAccelerationJerkMagnitudeMean
* FrequencyBodyBodyAccelerationJerkMagnitudeMeanFreq
* FrequencyBodyBodyGyroMagnitudeMean
* FrequencyBodyBodyGyroMagnitudeMeanFreq
* FrequencyBodyBodyGyroJerkMagnitudeMean
* FrequencyBodyBodyGyroJerkMagnitudeMeanFreq
* TimeBodyAccelerationStdX/Y/Z
* tGravityAccelerationStdX/Y/Z
* TimeBodyAccelerationJerkStdX/Y/Z
* TimeBodyGyroStdX/Y/Z
* TimeBodyGyroJerkStdX/Y/Z
* TimeBodyAccelerationMagnitudeStd
* tGravityAccelerationMagnitudeStd
* TimeBodyAccelerationJerkMagnitudeStd
* TimeBodyGyroMagnitudeStd
* TimeBodyGyroJerkMagnitudeStd
* FrequencyBodyAccelerationStdX/Y/Z
* FrequencyBodyAccelerationJerkStdX/Y/Z
* FrequencyBodyGyroStdX/Y/Z
* FrequencyBodyAccelerationMagnitudeStd
* FrequencyBodyBodyAccelerationJerkMagnitudeStd
* FrequencyBodyBodyGyroMagnitudeStd 
* FrequencyBodyBodyGyroJerkMagnitudeStd

More informations are available in the file codebook.md
