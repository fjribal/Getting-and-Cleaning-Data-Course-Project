# Getting-and-Cleaning-Data-Course-Project


###*Explanation of run_analysis.R script*###

The whole coursework is made in a single script.

It only uses the dplyr library.

The script is made up of six parts. 

##1st part:## 
        It gets the zip file with the data and saves it in a temp file.
        It creates a dataframe of each important file: activity_labels.txt, features.txt, 
        subject_test.txt, X_test.txt, y_test.txt, train_test.txt, X_train.txt, y_train.txt

##2st part:## 
        It creates a dataframe of the test data (from 3 dataframes) and another one of the train data (from 3                 dataframes). It includes a new column in each factor meaning test or train.
        Finally it merges both dataframes in a new one by means of rbind.
        
##3rd part:## 
        In order to answer question 3 it changes the column activity to a factor and then recodes the factors into a          text description obtained from activity_labels.txt (file1).
        
##4th part:## 
        Since the course project only asks for extracting mean and standard deviation for each measurement the columns         containing the strings 'mean()' or 'std()' are found by using wildcard characters.
        Then a new dataframe made up of activity, subject and, the mean and standard deviation measures is created.

##5th part:##
        In order to answer question 4 the labels of the measurements are changed into more descriptive names.

##6th part:## 
        Following question 5 a new independent data set is created working out the average of each variable for each          activity and subject.
        If the working directory is set to the location of the run_analysis.R script then this file will be created in the same directory where the script was saved.
        
  
        
For reading the tidy data set in R you can use:
        data <- read.table(file = 'tidydataset.txt', header = TRUE)    
