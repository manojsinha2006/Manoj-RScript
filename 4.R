getwd()
setwd("C:/Users/Manoj/Desktop")
# Used batdataset by importing .csv file
df<- read.csv("batdataset.csv", header = TRUE)
print(df)


df_f  <- df[df$Gender == "F", ]
df_m  <- df[df$Gender == "M", ]

df_tr_f <- df_f[1:14,]
df_tr_m <- df_m[1:7,]

df_tr <- merge(df_tr_f,df_tr_m,all=TRUE)

print(df_tr)

df_te_f <- df_f[15:20,]
df_te_m <- df_m[8:10,]
print(df_te_f)
print(df_te_m)

df_te <- merge(df_te_f,df_te_m,all=TRUE)
print(df_te)
              