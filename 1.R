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

var_atten <- var(df$Attendance)
var_marks  <- var(df$Marks)

print(var_atten)
print(var_marks)

stddev_attn  <- sqrt(var_atten)
stddev_marks <- sqrt(var_marks)

print(stddev_attn)
print(stddev_marks)




