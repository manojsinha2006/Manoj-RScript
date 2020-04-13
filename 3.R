getwd()
setwd("C:/Users/Manoj/Desktop")
# Used batdataset by importing .csv file
df<- read.csv("batdataset.csv", header = TRUE)
print(df)

########################################################

df$m_gen <- 0
df$f_gen <- 0

print(df)

df[which(df[,2]=='M'), 5] <- 1
df[which(df[,2]=='F'), 6] <- 1

print(df)

write.csv(df,"batdataset_one_hot_code.csv")


