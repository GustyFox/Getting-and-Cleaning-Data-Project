# Code Book for Getting and Cleaning Data Final Project

## Human Activity Recognition Using Smartphones Data Set (source data):
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## Data description: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Our Variables:

### Data from the files downloaded:
- Fst_train
- Snd_train
- Fst_test
- Snd_test
- subject_train
- subject_test 

### Data Merge
- BindAllInOne

### Original Variables
"1" "activityName"
"2" "originfile"
"3" "subject"
"4" "time.body.Acc.mean.X"
"5" "time.body.Acc.mean.Y"
"6" "time.body.Acc.mean.Z"
"7" "time.body.Acc.std.X"
"8" "time.body.Acc.std.Y"
"9" "time.body.Acc.std.Z"
"10" "time.GravityAcc.mean.X"
"11" "time.GravityAcc.mean.Y"
"12" "time.GravityAcc.mean.Z"
"13" "time.GravityAcc.std.X"
"14" "time.GravityAcc.std.Y"
"15" "time.GravityAcc.std.Z"
"16" "time.body.AccJerk.mean.X"
"17" "time.body.AccJerk.mean.Y"
"18" "time.body.AccJerk.mean.Z"
"19" "time.body.AccJerk.std.X"
"20" "time.body.AccJerk.std.Y"
"21" "time.body.AccJerk.std.Z"
"22" "time.body.Gyro.mean.X"
"23" "time.body.Gyro.mean.Y"
"24" "time.body.Gyro.mean.Z"
"25" "time.body.Gyro.std.X"
"26" "time.body.Gyro.std.Y"
"27" "time.body.Gyro.std.Z"
"28" "time.body.GyroJerk.mean.X"
"29" "time.body.GyroJerk.mean.Y"
"30" "time.body.GyroJerk.mean.Z"
"31" "time.body.GyroJerk.std.X"
"32" "time.body.GyroJerk.std.Y"
"33" "time.body.GyroJerk.std.Z"
"34" "time.body.AccMag.mean"
"35" "time.body.AccMag.std"
"36" "time.GravityAccMag.mean"
"37" "time.GravityAccMag.std"
"38" "time.body.AccJerkMag.mean"
"39" "time.body.AccJerkMag.std"
"40" "time.body.GyroMag.mean"
"41" "time.body.GyroMag.std"
"42" "time.body.GyroJerkMag.mean"
"43" "time.body.GyroJerkMag.std"
"44" "freq.body.Acc.mean.X"
"45" "freq.body.Acc.mean.Y"
"46" "freq.body.Acc.mean.Z"
"47" "freq.body.Acc.std.X"
"48" "freq.body.Acc.std.Y"
"49" "freq.body.Acc.std.Z"
"50" "freq.body.Acc.meanFreq.X"
"51" "freq.body.Acc.meanFreq.Y"
"52" "freq.body.Acc.meanFreq.Z"
"53" "freq.body.AccJerk.mean.X"
"54" "freq.body.AccJerk.mean.Y"
"55" "freq.body.AccJerk.mean.Z"
"56" "freq.body.AccJerk.std.X"
"57" "freq.body.AccJerk.std.Y"
"58" "freq.body.AccJerk.std.Z"
"59" "freq.body.AccJerk.meanFreq.X"
"60" "freq.body.AccJerk.meanFreq.Y"
"61" "freq.body.AccJerk.meanFreq.Z"
"62" "freq.body.Gyro.mean.X"
"63" "freq.body.Gyro.mean.Y"
"64" "freq.body.Gyro.mean.Z"
"65" "freq.body.Gyro.std.X"
"66" "freq.body.Gyro.std.Y"
"67" "freq.body.Gyro.std.Z"
"68" "freq.body.Gyro.meanFreq.X"
"69" "freq.body.Gyro.meanFreq.Y"
"70" "freq.body.Gyro.meanFreq.Z"
"71" "freq.body.AccMag.mean"
"72" "freq.body.AccMag.std"
"73" "freq.body.AccMag.meanFreq"
"74" "freq.body.AccJerkMag.mean"
"75" "freq.body.AccJerkMag.std"
"76" "freq.body.AccJerkMag.meanFreq"
"77" "freq.body.GyroMag.mean"
"78" "freq.body.GyroMag.std"
"79" "freq.body.GyroMag.meanFreq"
"80" "freq.body.GyroJerkMag.mean"
"81" "freq.body.GyroJerkMag.std"
"82" "freq.body.GyroJerkMag.meanFreq"

## The Script
1. Download, unzip and load source data into R
2. Merge the data sets of interest
3. Name the columns properly
   - Extrect only columns of interest
   - Calculates mean and standard deviation
4. Creates a Second Tidy Data Set  (MyTidySet)

