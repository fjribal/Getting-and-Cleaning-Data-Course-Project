#Course project
#Data obtaining

#libraries
library(dplyr)

###################### 1st PART. GETTING DATA #######################

temp.zip <- tempfile() #creates temp file
#downloads file to temp file
download.file('http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip',temp.zip)
unzip(temp.zip) #unzips the temp file
routes <- unzip(temp.zip, files=) #extracts names of files
number.of.files <- length(routes) #extracts number of files

#loop for creating one dataframe per important file
for (i in c(1,2,14,15,16,26,27,28)){
        assign(paste("file", i, sep = ""), read.table(routes[i]))
        
        }

unlink(temp.zip) #deletes temporary file

#####################################################################


############# 2nd PART. MERGING DATA ################################

#creates test dataframe
        #assigns names to each column of the test dataframes
        names(file15) <- file2[,2]
        names(file14) <- 'subject'
        names(file16) <- 'activity'
        test <- cbind("test",file14, file16, file15)#adds test to diferentiate when merging. It will be a factor.
        names(test)[1] <- 'type' # give names to type (test-train factor)

#creates train dataframe
        #assigns names to each column of the test dataframes
        names(file27) <- file2[,2]
        names(file26) <- 'subject'
        names(file28) <- 'activity'
        train <- cbind("train",file26, file28, file27)
        names(train)[1] <- 'type' #name the column of the type (test or train)

#Merges both test and trial dataframes
        merged <- rbind(test,train)

#####################################################################   
   
             
################ 3rd PART. NAMING ACTIVITIES ########################

        #changes activity into a factor
        merged$activity<- factor(merged$activity)

#changes column activity from numbers to names
        levels(merged$activity) <- levels(file1[,2]) #This is the way to answer question 3

#####################################################################
   
        
########## 4th PART. REMOVING UNNEEDED VARIABLES ####################
        
#remove unneeded columns
        wildcard1 <- glob2rx('*mean()*') #defines wildcard character for mean()
        wildcard2 <- glob2rx('*std()*') #defines wildcard character for std()
        mean.columns <- grep(wildcard1,names(merged)) #finds columns with mean()
        sd.columns <- grep(wildcard2,names(merged)) #finds columns with std()
        
        #creates dataframe with subject and activity then mean columns then std deviation columns
        clean.merged <- merged[,c(2,3,mean.columns,sd.columns)]#This is the solution for question 2. 

#####################################################################

                
############ 5th PART. RENAMING VARIABLES ###########################


        #Creates vector with new names (more descriptive) for the tidy data set (clean.merged)
        new.names <- c(
                'subject',
                'activity',
                'time.body.accel.mean.X',
                'time.body.accel.mean.Y',
                'time.body.accel.mean.Z',
                'time.gravity.accel.mean.X',
                'time.gravity.accel.mean.Y',
                'time.gravity.accel.mean.Z',
                'time.body.accel.jerk.mean.X',
                'time.body.accel.jerk.mean.Y',
                'time.body.accel.Jerk.mean.Z',
                'time.body.ang.velocity.mean.X',
                'time.body.ang.velocity.mean.Y',
                'time.body.ang.velocity.mean.Z',
                'time.body.ang.velocity.jerk.mean.X',
                'time.body.ang.velocity.jerk.mean.Y',
                'time.body.ang.velocity.jerk.mean.Z',
                'time.body.accel.magnitude.mean',
                'time.gravity.accel.magnitude.mean',
                'time.body.accel.jerk.magnitude.mean',
                'time.body.ang.velocity.magnitude.mean',
                'time.body.ang.velocity.jerk.magnitude.mean',
                'freq.body.accel.mean.X',
                'freq.body.accel.mean.Y',
                'freq.body.accel.mean.Z',
                'freq.body.accel.jerk.mean.X',
                'freq.body.accel.jerk.mean.Y',
                'freq.body.accel.jerk.mean.Z',
                'freq.body.ang.velocity.mean.X',
                'freq.body.ang.velocity.mean.Y',
                'freq.body.ang.velocity.mean.Z',
                'freq.body.accel.magnitude.mean',
                'freq.body.accel.jerk.magnitude.mean',
                'freq.body.ang.velocity.magnitude.mean',
                'freq.body.ang.velocity.jerk.magnitude.mean',
                'time.body.accel.stddev.X',
                'time.body.accel.stddev.Y',
                'time.body.accel.stddev.Z',
                'time.gravity.accel.stddev.X',
                'time.gravity.accel.stddev.Y',
                'time.gravity.accel.stddev.Z',
                'time.body.accel.jerk.stddev.X',
                'time.body.accel.jerk.stddev.Y',
                'time.body.accel.Jerk.stddev.Z',
                'time.body.ang.velocity.stddev.X',
                'time.body.ang.velocity.stddev.Y',
                'time.body.ang.velocity.stddev.Z',
                'time.body.ang.velocity.jerk.stddev.X',
                'time.body.ang.velocity.jerk.stddev.Y',
                'time.body.ang.velocity.jerk.stddev.Z',
                'time.body.accel.magnitude.stddev',
                'time.gravity.accel.magnitude.stddev',
                'time.body.accel.jerk.magnitude.stddev',
                'time.body.ang.velocity.magnitude.stddev',
                'time.body.ang.velocity.jerk.magnitude.stddev',
                'freq.body.accel.stddev.X',
                'freq.body.accel.stddev.Y',
                'freq.body.accel.stddev.Z',
                'freq.body.accel.jerk.stddev.X',
                'freq.body.accel.jerk.stddev.Y',
                'freq.body.accel.jerk.stddev.Z',
                'freq.body.ang.velocity.stddev.X',
                'freq.body.ang.velocity.stddev.Y',
                'freq.body.ang.velocity.stddev.Z',
                'freq.body.accel.magnitude.stddev',
                'freq.body.accel.jerk.magnitude.stddev',
                'freq.body.ang.velocity.magnitude.stddev',
                'freq.body.ang.velocity.jerk.magnitude.stddev')

        #Renames variables with the descriptive names (for answering question 4)
        names(clean.merged) <- new.names
#####################################################################
        
        
############ 6th PART. CREATING INDEPENDENT TIDY DATA SET ############        
       
#computation of the mean by activity and subject
        grouped <- group_by(clean.merged,activity, subject) 
        mean.result <- summarise_each(grouped,funs(mean))
        
#exportes to a txt file
        write.table(mean.result,file = 'tidydataset.txt', row.names = FALSE, col.names = TRUE)

######## END OF THE SCRIPT ##########################################
        
               

