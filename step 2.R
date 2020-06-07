# STEP 2 : Extracts only the measurements on the mean and standard deviation for each measurement.
TidyData <- Merged_Data %>% select(subject, code, contains("mean"), contains("std"))