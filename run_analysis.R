run_analysis <- function() {
  
  dtTest <- read.table("C:\\dev\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\test\\X_test.txt", header=FALSE)
 
  dtTrain <- read.table("C:\\dev\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\train\\X_train.txt", header=FALSE)
  
  dtMerged <- rbind(dtTest, dtTrain)  
  
  dfMeanAndStd <- dtMerged[,c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201,202,214,215,227,228,240,241,253,254,266,267,268,269,270,271,345,346,347,348,349,350,424,425,426,427,428,429,503,504,516,517,529,530,542,543)]
  
  names(dfMeanAndStd)[1]<-"tBodyAccelerationMeanX"
  names(dfMeanAndStd)[2]<-"tBodyAccelerationMeanY"
  names(dfMeanAndStd)[3]<-"tBodyAccelerationMeanZ"
  names(dfMeanAndStd)[4]<-"tBodyAccelerationStandardDeviationX"
  names(dfMeanAndStd)[5]<-"tBodyAccelerationStandardDeviationY"
  names(dfMeanAndStd)[6]<-"tBodyAccelerationStandardDeviationZ"
  names(dfMeanAndStd)[7]<-"tGravityAccelerationMeanX"
  names(dfMeanAndStd)[8]<-"tGravityAccelerationMeanY"
  names(dfMeanAndStd)[9]<-"tGravityAccelerationMeanZ"
  names(dfMeanAndStd)[10]<-"tGravityAccelerationStandardDeviationX"
  names(dfMeanAndStd)[11]<-"tGravityAccelerationStandardDeviationY"
  names(dfMeanAndStd)[12]<-"tGravityAccelerationStandardDeviationZ"
  names(dfMeanAndStd)[13]<-"tBodyAccelerationJerkMeanX"
  names(dfMeanAndStd)[14]<-"tBodyAccelerationJerkMeanY"
  names(dfMeanAndStd)[15]<-"tBodyAccelerationJerkMeanZ"
  names(dfMeanAndStd)[16]<-"tBodyAccelerationJerkStandardDeviationX"
  names(dfMeanAndStd)[17]<-"tBodyAccelerationJerkStandardDeviationY"
  names(dfMeanAndStd)[18]<-"tBodyAccelerationJerkStandardDeviationZ"
  names(dfMeanAndStd)[19]<-"tBodyGyroMeanX"
  names(dfMeanAndStd)[20]<-"tBodyGyroMeanY"
  names(dfMeanAndStd)[21]<-"tBodyGyroMeanZ"
  names(dfMeanAndStd)[22]<-"tBodyGyroStandardDeviationX"
  names(dfMeanAndStd)[23]<-"tBodyGyroStandardDeviationY"
  names(dfMeanAndStd)[24]<-"tBodyGyroStandardDeviationZ"
  names(dfMeanAndStd)[25]<-"tBodyGyroJerkMeanX"
  names(dfMeanAndStd)[26]<-"tBodyGyroJerkMeanY"
  names(dfMeanAndStd)[27]<-"tBodyGyroJerkMeanZ"
  names(dfMeanAndStd)[28]<-"tBodyGyroJerkStandardDeviationX"
  names(dfMeanAndStd)[29]<-"tBodyGyroJerkStandardDeviationY"
  names(dfMeanAndStd)[30]<-"tBodyGyroJerkStandardDeviationZ"
  names(dfMeanAndStd)[31]<-"tBodyAccelerationMagMean"
  names(dfMeanAndStd)[32]<-"tBodyAccelerationMagStandardDeviation"
  names(dfMeanAndStd)[33]<-"tGravityAccelerationMagMean"
  names(dfMeanAndStd)[34]<-"tGravityAccelerationManStandardDeviation"
  names(dfMeanAndStd)[35]<-"tBodyAccelerationJerkMagMean"
  names(dfMeanAndStd)[36]<-"tBodyAccelerationJerkMagStandardDeviation"
  names(dfMeanAndStd)[37]<-"tBodyGyroMagMean"
  names(dfMeanAndStd)[38]<-"tBodyGyroMagStandardDeviation"
  names(dfMeanAndStd)[39]<-"tBodyGyroJerkMagMean"
  names(dfMeanAndStd)[40]<-"tBodyGyroJerkMagtandardDeviation"
  names(dfMeanAndStd)[41]<-"fBodyAccelerationMeanX"
  names(dfMeanAndStd)[42]<-"fBodyAccelerationMeanY"
  names(dfMeanAndStd)[43]<-"fBodyAccelerationMeanZ"
  names(dfMeanAndStd)[44]<-"fBodyAccelerationStandardDeviationX"
  names(dfMeanAndStd)[45]<-"fBodyAccelerationStandardDeviationY"
  names(dfMeanAndStd)[46]<-"fBodyAccelerationStandardDeviationZ"
  names(dfMeanAndStd)[47]<-"fBodyAccelerationJerkMeanX"
  names(dfMeanAndStd)[48]<-"fBodyAccelerationJerkMeanY"
  names(dfMeanAndStd)[49]<-"fBodyAccelerationJerkMeanZ"
  names(dfMeanAndStd)[50]<-"fBodyAccelerationJerkStandardDeviationX"
  names(dfMeanAndStd)[51]<-"fBodyAccelerationJerkStandardDeviationY"
  names(dfMeanAndStd)[52]<-"fBodyAccelerationJerkStandardDeviationZ"
  names(dfMeanAndStd)[53]<-"fBodyGyroMeanX"
  names(dfMeanAndStd)[54]<-"fBodyGyroMeanY"
  names(dfMeanAndStd)[55]<-"fBodyGyroMeanZ"
  names(dfMeanAndStd)[56]<-"fBodyGyroStandardDeviationX"
  names(dfMeanAndStd)[57]<-"fBodyGyroStandardDeviationY"
  names(dfMeanAndStd)[58]<-"fBodyGyroStandardDeviationZ"
  names(dfMeanAndStd)[59]<-"fBodyAccelerationMagMean"
  names(dfMeanAndStd)[60]<-"fBodyAccelerationManStandardDeviation"
  names(dfMeanAndStd)[61]<-"fBodyBodyAccelerationJerkMagMean"
  names(dfMeanAndStd)[62]<-"fBodyBodyAccelerationJerkMagStandardDeviation"
  names(dfMeanAndStd)[63]<-"fBodyBodyGyroMagMean"
  names(dfMeanAndStd)[64]<-"fBodyBodyGyroMagStandardDeviation"
  names(dfMeanAndStd)[65]<-"fBodyBodyGyroJerkMagMean"
  names(dfMeanAndStd)[66]<-"fBodyBodyGyroJerkMagStandardDeviation"
  
  dsTidy <- colMeans(dfMeanAndStd)
  
  write.table(dsTidy, "c:\\dev\\TidySet.txt", sep=",")
}
