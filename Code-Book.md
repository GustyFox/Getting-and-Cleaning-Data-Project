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

## The Script
1. Download, unzip and load source data into R
2. Merge the data sets of interest
3. Name the columns properly
      i. Extrect only columns of interest
      ii. Calculates mean and standard deviation
4.Creates a Second Tidy Data Set  (MyTidySet)

