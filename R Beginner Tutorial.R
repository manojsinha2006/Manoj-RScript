getwd()
setwd("C:/Users/Manoj/Desktop")

############## BAT ASSIGNMENT - MANOJ KUMAR #################

############################ Topic 1 ########################

# Creating and combining Vectors

y<-1:5
y

z<- seq(1,5,length=10)
z

#Combining Vectors

A<- c(1, 3, 5, 7)
B<- c(2, 4, 6, 8)
D<- c(A,B)
D

############################ Topic 2 ######################## 

#Vector Arithmetics

A<- c(1, 3, 5, 7)
B<- c(2, 4, 6, 8)
D<- 5*A
D
E<- A + B
E
F<- E + D
F
G<- A - B
G
H<- A * B
H
I<- A/B
I

############################ Topic 3 ########################

#Vector Index (Positive index, negative index and Out of range index)

A<- c("Manoj", "Arnab", "Chandan", "Subhojit", "Sanu") 
A[3]  # Positive index
A[-3] # Negative index
A[6]  # Out of range

A<- (-3):6 # Vectors: Index and logical index 
A

B<- 1:10
B[4:8] # Vectors: Index and logical index 

A<- (-3):6
A[1:10]

B<- (-3):6
B[2:11]

A<- (-3):6
A[3:9]
A[-c(1:3,9:10)] # negative selection

index<-abs(A) # logical index
index

B<- (-5):8
B[1:14]
index<-abs(B)<4
index

index<-abs(B)
index
B[index]

############################ Topic 4 ########################

#list

A<- list(name="Manoj",age=35,Married="YES")
A$name
A$age
A$Married

A<- c(2, 4, 6) 
B<- c("Manoj", "Arnab", "Kushal", "Subhojit", "Rahul") 
C<- c(TRUE, FALSE, TRUE, FALSE, FALSE)
x<- list(A, B, C, 3) #list slicing
x[2]

y<- list(A, B, C, 3) #list slicing
y[c(2,4)]

############################ Topic 5 ########################

#Creating Matrix

A = matrix( c(2, 4, 3, 1, 5, 7), nrow=3, ncol=2) #3X2 matrix
A
B = matrix( 1:9, nrow=3, ncol=3) #3X3 matrix
B
C = matrix( 1:9, nrow=3) #excluding ncol will still give the same result of 3X3
C
D = matrix( 1:9, ncol=3) #excluding nrow will still give the same result of 3X3
D
E = matrix( 1:9, nrow=3, byrow=TRUE) #fill matrix row wise
E
x = matrix( 1:9, nrow=3, dimnames = list(c("X", "Y", "X"),c("A","B","C")))
x

#creating a matrix using functions cbind() and rbind() functions

A<- cbind(c(1,2,3),c(4,5,6))
A

B<- rbind(c(1,2,3),c(4,5,6))
B

#Access Elements of a matrix

B = matrix( 1:9, nrow=3, ncol=3) #3X3 matrix
B[c(2,3),c(1,3)] # select rows 2 & 3 and columns 1 & 3

B[c(3,2),]  # excluding column field blank will select entire columns

B[,c(3,2)]  # excluding row field blank will select entire rows

B[,] # excluding rows as well as column field blank will select entire matrix



############################ Topic 6 ########################

# finding transpose, determinant and inverse of a matrix

#Transpose of a matrix

B = matrix( 1:9, nrow=3, ncol=3) #3X3 matrix
B
t(B) 
B[2,3] <- 15 # modify an element of matrix
B

#determinant of a matrix

A = matrix( c(2, 4, 3, 1, 5, 7, 3, 2, 1), nrow=3, ncol=3) #3X3 matrix
A
det(A) 

#inverse of a matrix

solve(A)

############################ Topic 7 ########################

#data frame

A<- c(2, 4, 6) 
B<- c("Manoj", "Arnab", "Kushal") 
C<- c(TRUE, FALSE, TRUE)
df<- data.frame(A,B,C) #df is data frame
df

#Comparing cbind() and data frame

x<- cbind(A=c(2,4,6),B=c("Manoj", "Arnab", "Kushal"))
x
A<- c(2, 4, 6) 
B<- c("Manoj", "Arnab", "Kushal")
df<- data.frame(A=c(2,4,6),B=c("Manoj", "Arnab", "Kushal"))
df

#another way

df<- data.frame(A,B) #df is data frame
df
df<- data.frame(x=3,y=5)
df

############################ Topic 8 ######################## 

#Factors

x <- c(0,0,1,1,0,0,1)
df <- data.frame(x)
df$x.cat <- factor(df$x, labels = c("Male","Female"))
df
levels(df$x.cat)
summary(df$x.cat)

############################ Topic 9 ########################

#loops : if and for loop
#if loop

x <- -5
y <- if(x > 0) 5 else 6
y
Ind <- 350
Aus <- 240
if(Ind > Aus) print("India wins") else print("India lose")
#if and for loop
matches <- list(c(2,2),c(5,3),c(6,4))
for (match in matches){
  if (match[1] > match[2]){
    print("Win")
  } else {
    print ("Lose")
  }
}


############################ Topic 10 ########################

#measures of central tendancy

x <- c(8,3,7,2,1,9,8,2,10,9)
hist(x,col = "red") # Histogram

boxplot(x,col=) # Boxplot

barplot(x, col='orange', main = 'Bar_Chart',xlab = 'X', ylab = 'Y') # Bargraph

mean(x) 

sort(x) # Needd to sort before finding median
median(x)

y<- table(x) # mode
y

sd(x) # Standard Deviation

###########################Topic 11###########################

# Used Automobile dataset by importing excel dataset
df<- read_excel("Automob_dataset.xlsx")
df

attach(Automob_dataset) #attach the data
names(Automob_dataset) #Check the type of variable
class(Mileage)
class(HP)
class(Wt)

summary(Mileage)
summary(HP)

#Covariance
cov(Mileage,HP)
cov(Mileage,Wt)
cov(HP,Wt)

#Correlation
cor(Mileage,HP) #Correlation between MPG and Horsepower
cor(Mileage,Wt) #Correlation between MPG and Weight
cor(HP,Wt) #Correlation between Horsepower and Weight

#We can also use the pearson correlation as below

cor(Mileage,HP, method = "pearson") #Correlation between MPG and Horsepower
cor(Mileage,Wt, method = "pearson") #Correlation between MPG and Weight
cor(HP,Wt, method = "pearson") #Correlation between Horsepower and Weight


#Scatterplots
plot(HP, Mileage, main = "scatterplot1")
abline(lm(Mileage ~ HP), col= "red", lwd=3)

plot(Wt, Mileage, main = "scatterplot2")
abline(lm(Mileage ~ Wt), col= "red", lwd=3)

plot(Wt, HP, main = "scatterplot3")
abline(lm(HP ~ Wt), col= "red", lwd=3)

plot(HP, Wt, main = "scatterplot4")
abline(lm(Wt ~ HP), col= "red", lwd=3)



###########################Topic 12###########################

#Regression : Simple and Multiple Regression

model1 <- lm(Mileage ~ HP) # model1
summary(model1) # Summary

model2 <- lm(Mileage ~ Wt) # model2
summary(model2)


coef(model1)
coef(model2)

anova(model1)
anova(model2)

confint(model1, conf.level=0.95) # Confidence Interval for model 1
confint(model2, conf.level=0.95) # Confidence Interval for model 2

model3 <- lm(Mileage ~ (HP + Wt)) # model3
summary(model3)
coef(model3)


plot( model3, main = "scatterplot3")
abline(lm(Mileage ~ (HP + Wt)), col= "red", lwd=3)


predict(model3,data.frame(HP=40, Wt=2000)) # predicting new Mileage when HP=40 & Wt=2000








