# STEP 5: FROM THE DATA SET IN SET 4, CREATES A SECOND, INDEPENDENT TIDY DATA SET WITH THE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT.
FinalData <- TidyData %>%
  group_by(subject, activity) %>%
  summarise_all(funs(mean))
write.table(FinalData, "FinalData.txt", row.name=FALSE)