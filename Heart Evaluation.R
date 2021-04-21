library(tidyverse)
library(caret)

#Load data in
heart_data<- read.csv('heart.csv')
#Take a look
View(heart_data)
str(heart_data)

#table the data
table(heart_data$target)

# Count the number of Na's in the dataset
dim(heart_data)
table(is.na(heart_data))

# Evaluate the total loss after eliminating rows containing NA
heart_data_2 <- heart_data[complete.cases(heart_data), ]

table(is.na(heart_data_2))

# Compare the dimensions of the original and cleaned data sets 
dim(heart_data)#original dataset
dim(heart_data_2)#lost over half of the rows


heart_data <- heart_data[complete.cases(heart_data), ]#ok makes the naming simpler

table(is.na(heart_data))

heart_data_2$target <- recode(heart_data_2$target, '1' = 1, '0' = 0)
heart_data_2$sex <- recode(heart_data_2$sex, '1' = 'm', '0' = 'f')

table(heart_data$sex)
