# Code Book

This code book summarizes the data fields in `tidy.txt`.
The data is taken from the Human Activity Recognition Using Smartphones Dataset Version 1.0

Authors:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

### Original description of data

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

###What is in the data

The original data are separated in a test and a train sets. The version of the data stored in the `tidy.txt` file has both the train and test data sets merged, and it has the columns with the participant id, and the activity description. Also, it includes only the measurements that contain the mean and standard deviations for all measurements. No further transformations were applied to the data
 
## Identifiers

*`subject` - The ID of the test participant

*`activity` - The type of activity performed when the corresponding measurements were taken

## Measurements

•	`timeBodyAccelerationMeanX`
•	`timeBodyAccelerationMeanY`
•	`timeBodyAccelerationMeanZ`
•	`timeBodyAccelerationStdX`
•	`timeBodyAccelerationStdY`
•	`timeBodyAccelerationStdZ`
•	`timeGravityAccelerationMeanX`
•	`timeGravityAccelerationMeanY`
•	`timeGravityAccelerationMeanZ`
•	`timeGravityAccelerationStdX`
•	`timeGravityAccelerationStdY`
•	`timeGravityAccelerationStdZ`
•	`timeBodyAccelerationJerkMeanX`
•	`timeBodyAccelerationJerkMeanY`
•	`timeBodyAccelerationJerkMeanZ`
•	`timeBodyAccelerationJerkStdX`
•	`timeBodyAccelerationJerkStdY`
•	`timeBodyAccelerationJerkStdZ`
•	`timeBodyGyroscopeMeanX`
•	`timeBodyGyroscopeMeanY`
•	`timeBodyGyroscopeMeanZ`
•	`timeBodyGyroscopeStdX`
•	`timeBodyGyroscopeStdY`
•	`timeBodyGyroscopeStdZ`
•	`timeBodyGyroscopeJerkMeanX`
•	`timeBodyGyroscopeJerkMeanY`
•	`timeBodyGyroscopeJerkMeanZ`
•	`timeBodyGyroscopeJerkStdX`
•	`timeBodyGyroscopeJerkStdY`
•	`timeBodyGyroscopeJerkStdZ`
•	`timeBodyAccelerationMagnitudeMean`
•	`timeBodyAccelerationMagnitudeStd`
•	`timeGravityAccelerationMagnitudeMean`
•	`timeGravityAccelerationMagnitudeStd`
•	`timeBodyAccelerationJerkMagnitudeMean`
•	`timeBodyAccelerationJerkMagnitudeStd`
•	`timeBodyGyroscopeMagnitudeMean`
•	`timeBodyGyroscopeMagnitudeStd`
•	`timeBodyGyroscopeJerkMagnitudeMean`
•	`timeBodyGyroscopeJerkMagnitudeStd`
•	`frequencyBodyAccelerationMeanX`
•	`frequencyBodyAccelerationMeanY`
•	`frequencyBodyAccelerationMeanZ`
•	`frequencyBodyAccelerationStdX`
•	`frequencyBodyAccelerationStdY`
•	`frequencyBodyAccelerationStdZ`
•	`frequencyBodyAccelerationMeanFreqX`
•	`frequencyBodyAccelerationMeanFreqY`
•	`frequencyBodyAccelerationMeanFreqZ`
•	`frequencyBodyAccelerationJerkMeanX`
•	`frequencyBodyAccelerationJerkMeanY`
•	`frequencyBodyAccelerationJerkMeanZ`
•	`frequencyBodyAccelerationJerkStdX`
•	`frequencyBodyAccelerationJerkStdY`
•	`frequencyBodyAccelerationJerkStdZ`
•	`frequencyBodyAccelerationJerkMeanFreqX`
•	`frequencyBodyAccelerationJerkMeanFreqY`
•	`frequencyBodyAccelerationJerkMeanFreqZ`
•	`frequencyBodyGyroscopeMeanX`
•	`frequencyBodyGyroscopeMeanY`
•	`frequencyBodyGyroscopeMeanZ`
•	`frequencyBodyGyroscopeStdX`
•	`frequencyBodyGyroscopeStdY`
•	`frequencyBodyGyroscopeStdZ`
•	`frequencyBodyGyroscopeMeanFreqX`
•	`frequencyBodyGyroscopeMeanFreqY`
•	`frequencyBodyGyroscopeMeanFreqZ`
•	`frequencyBodyAccelerationMagnitudeMean`
•	`frequencyBodyAccelerationMagnitudeStd`
•	`frequencyBodyAccelerationMagnitudeMeanFreq`
•	`frequencyBodyBodyAccelerationJerkMagnitudeMean`
•	`frequencyBodyBodyAccelerationJerkMagnitudeStd`
•	`frequencyBodyBodyAccelerationJerkMagnitudeMeanFreq`
•	`frequencyBodyBodyGyroscopeMagnitudeMean`
•	`frequencyBodyBodyGyroscopeMagnitudeStd`
•	`frequencyBodyBodyGyroscopeMagnitudeMeanFreq`
•	`frequencyBodyBodyGyroscopeJerkMagnitudeMean`
•	`frequencyBodyBodyGyroscopeJerkMagnitudeStd`
•	`frequencyBodyBodyGyroscopeJerkMagnitudeMeanFreq`


## Activity Labels

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test
