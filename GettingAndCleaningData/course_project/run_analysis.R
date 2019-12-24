library(data.table)
library(dplyr)

columns_names = read.table("UCI\ HAR\ Dataset/features.txt")

X_train = read.table("UCI\ HAR\ Dataset/train/X_train.txt", col.names = unlist(columns_names[2]))
y_train = read.table("UCI\ HAR\ Dataset/train/y_train.txt", col.names = c("Activity"))
X_test = read.table("UCI\ HAR\ Dataset/test/X_test.txt", col.names = unlist(columns_names[2]))
y_test = read.table("UCI\ HAR\ Dataset/test/y_test.txt", col.names = c("Activity"))
subjects_train = read.table("UCI\ HAR\ Dataset/train/subject_train.txt", col.names = "Subject")
subjects_test = read.table("UCI\ HAR\ Dataset/test/subject_test.txt", col.names = "Subject")

# Add Subject col
X_train = dplyr::mutate(X_train, Subject = subjects_train$Subject)
X_test = dplyr::mutate(X_test, Subject = subjects_test$Subject)

# Merge the X and y tables (train and test)
merged_X = dplyr::bind_rows(X_train, X_test)
merged_y = dplyr::bind_rows(y_train, y_test)
merged = dplyr::mutate(merged_X, Activity = merged_y$Activity)

# Only keep mean and std cols & Activity & Subject
dt = merged[,c(unlist(grep("mean", colnames(merged))), unlist(grep("std", colnames(merged))), length(merged)-1, length(merged))]
# Change Activity numbers to factor
activity_labels = read.table("UCI\ HAR\ Dataset/activity_labels.txt")
dt$Activity = factor(dt$Activity)
levels(dt$Activity) = unlist(activity_labels[2])

# Change col names
colnames(dt) = sub("fBody", "FrequencyBody", colnames(dt))
colnames(dt) = sub("tBody", "TimeBody", colnames(dt))
colnames(dt) = sub("Acc", "Acceleration", colnames(dt))
colnames(dt) = sub("Mag", "Magnitude", colnames(dt))
colnames(dt) = sub("mean", "Mean", colnames(dt))
colnames(dt) = sub("std", "Std", colnames(dt))
colnames(dt) = gsub("\\.", "", colnames(dt))

# Save tidy dataset
write.table(dt, "tidy_dataset.txt", row.names=FALSE)

# Mean of cols by activity and subjects
average = setDT(dt)[, lapply(.SD, mean), by=c("Subject", "Activity")]
write.table(average, "mean_by_subject_by_activity.txt", row.names=FALSE)


