This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data. 

## read all the training data sets

* train_set
* train_labels
* train_subject

## read all the test data sets
* test_set
* test_labels 
* test_subject

## Read all the features of the data sets
* read_features
* read_activity

## Set the column names of the data sets

Here the colnames command was used to add the column name for label, subject and observation data for training and test data

## Combine train and test data frames
Then the training and test data sets were combined to form the uber data set df for both train and test

## Merge train and test data frames
Here the data frame "df" was created as a merged data set of train and test data using the merge command.

## Extract only the mean and std dev of all the measurements

newdf was the data frame created in this step after doing pattern matching of mean and std strings and then subsetting the original df dataset.

## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive activity names. 

this was done here.



