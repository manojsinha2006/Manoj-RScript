getwd()
setwd("C:/Users/Manoj/Desktop")
# Used batdataset by importing .csv file
df<- read.csv("batdataset.csv", header = TRUE)
print(df)

########################################################

# Count of records
total <- nrow(df)
sum_att  <- sum(df$Attendance)
sum_marks  <- sum(df$Marks)

mean_att <- sum_att/total
mean_marks <- sum_marks/total

print(mean_att)
print(mean_marks)

mean_att <- sum(df$Attendance)
print(mean_att) #mean of attendance

var_att <- var(df$Attendance)
var_marks  <- var(df$Marks)

print(var_att)
print(var_marks)

stddev_att  <- sqrt(var_att)
stddev_marks <- sqrt(var_marks)

print(stddev_att)
print(stddev_marks)

df$att_z <- (df$Attendance - mean_att)/stddev_att
df$mark_z <- (df$Attendance - mean_marks)/stddev_marks

print(df)

write.csv(df,"batdataset_zscore.csv")


