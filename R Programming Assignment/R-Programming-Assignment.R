
#Q1.Try to write a code for printing sequence of numbers from 1 to 50 with the differences of 3, 5, 10 

#with the differences of 3
a = seq(1,50,by = 3)
a

#with the differences of 5

b = seq(1,50,by = 5)
b

#with the differences of 10

c= seq(1,50,by = 10)
c

# Q2. What are the different data objects in R? and write syntax and example for each and every object

R-Object

# Objects are the instance of the class. 
#Also, everything in R is an object and to know more look at Data types in R. 
#They also can have their attributes like class, attributes,dimnnames, names, etc.

#There are 5 basic types of objects in the R language:

#1) Lists
#2) vector
#3) Matrices
#4) Arrays
#5) Data frame
#6) Factors

#1)Vectors
#A vector is simply a list of items that are of the same type. 
#Atomic vectors can store homogeneous data types such as character, doubles, integers, raw, logical, and complex. 
#A single element variable is also said to be vector.

Example 

# vectors  of strings

Department <- c("IT","Finance","Operations")
Department
class(Department)

# vector of numerical values

numbers <- c(2,4,5)
numbers
class(numbers)

# vector with numerical value in a sequence

num <- 1:10

num
class(num)

# vector with numerical decimals in sequence

numbers1 <- 2.5:7.5
numbers1
class(numbers1)


# vector with numerical decimals in a sequence where the last element is not used

numbers2 <- 2.5:7.3
numbers2
class(numbers2)


# vector of logical values

logic_values <- c(TRUE,FALSE,FALSE,TRUE)
logic_values
class(logic_values)


# vector length

specialization <- c("finance","marketing","HR")
length(specialization)

# sorting vector
fruits <- c("banana", "apple", "orange", "mango", "lemon")
numbers <- c(13, 3, 5, 7, 20, 2)

sort(fruits)
sort(numbers)


# Access Vectors

fruits <- c("apple","Banana","Orange")
fruits[2]

# Accessing multiple elements by referring to different index positions with c() function

fruits <- c("banana", "apple", "orange", "mango", "lemon")
fruits[c(2,5)]


#Accessing  element using negative index numbers

fruits <- c("banana", "apple", "orange", "mango", "lemon")
fruits[c(-1)]

#change the value of specific item

fruits <- c("banana", "apple", "orange", "mango", "lemon")
fruits[2] <- "grapes"

fruits

#Repeat Vectors

#repeat each value:

num_each <- rep(c(1,2,3,4,5),each = 4)

num_each


#Repeat the sequence of the vector:

repeat_times <- rep(c(1,2,3,4,5,6),times = 5)
repeat_times

#Repeat each value independently:

Repeat_independent <- rep(c(1,2,3), times =c(5,2,1))
Repeat_independent

# create vector with numerical values in a sequences with the : operatr:

numbers <- 1:10

numbers


# To make bigger or smaller steps in a sequence use the seq() function:



numbers <- seq(from = 0, to = 100, by = 20)

numbers


# 2) LIST

#list in R can contain many different data types inside it.

List1 <- list("Mango","Apple","Banana")
List1


#Access Lists

List2 <- list("Mango","Apple","Banana")
List2[2]

#Change the item value

List3 <- list("Apple","Orange","Banana","Mango")
List3[3] <-"Pineapple"
List3

#liST Length

List4 <- list("apple", "banana", "cherry")
length(List4)

# Check if item exist


List5 <- list("apple","Mango","Banana")

"Mango" %in% List5


#To add item to lists

List6 <- list("apple","Orange","Grapes")
append(List6,"Pineapple")
List6

# To add item to lists after specific index

List7 <- list("apple","Orange","Grapes")
append(List7, "Berry",after = 2)


Oldlist <- list("Apple","Mango","Banana")
newlist <-Oldlist[-1]
newlist

# Range of indexes

List8 <- list("apple", "banana", "cherry", "orange", "kiwi", "melon", "mango")
List8[3:7]


#Print all items in the list, one by one:

List9 <- list("Mango","Pineapple","Strawberry")
for(x in List9) {
  print(x)
}

# Join Two Lists

listA <- list("x","y","z")
listB <- list(3,4,5)

listc <- c(listA,listB)
listc
}


# 3) Matrices

#A matrix is a two dimensional data set with columns and rows.
# A column is a vertical representation of data, while a row is a horizontal representation of data.

Matrix1 <- matrix(c(1,2,3,4,5,6),nrow = 3, ncol =2)
Matrix1

#Create matrix with string

Matrix2 <- matrix(c("Apple","Orange","Banana","Berry"),nrow = 2, ncol =2)
Matrix2


# Access Matrix Item

Matrix3 <- matrix(c("Apple","Orange","Banana","Berry"),nrow = 2, ncol =2)
Matrix3
Matrix3[2,2]


#The whole row can be accessed if you specify a comma after the number in the bracket

Matrix3[2,]


# To Access Whole Row

Matrix3[,1]

# To access more than one Row
Matrix4 <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
Matrix4
Matrix4[c(1,2),]


# To access whole Column

Matrix5 <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
Matrix5
Matrix5[,c(1,2)]


# Add Rows and Columns

#Add Column

matrix6 <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
New_Matrix <- cbind(matrix6,c("Blueberry","Strawberry","Rasberry"))
New_Matrix

#Add Column
matrix7 <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
NewMatrix <- rbind(matrix7,c("Strawberry","Rasberry","Blueberry"))
NewMatrix


# Remove columns and rows

matrix8 <- matrix(c("apple", "banana", "cherry", "orange", "mango", "pineapple"), nrow = 3, ncol =2)
Newmatrix8 <- matrix8[-c(1), -c(1)]
matrix8


# check  if an item exist

matrix9 <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

"cherry" %in% matrix9


# Nunber of rows and columns

matrix10 <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
dim(matrix10)


# Matrix Length

matrix11 <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
length(matrix11)


# Loop Through Matrix

matrix12 <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

for (rows in 1:nrow(matrix12)){
  for( columns in 1:ncol(matrix12)){
    print(matrix12[rows,columns])
  }
}



# Combine two matrices

#Adding it as rows

MatrixA <- matrix(c("apple", "banana", "cherry", "grape"), nrow = 2, ncol = 2)
MatrixB <- matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2, ncol = 2)

matrix_combine <- rbind(MatrixA,MatrixB)
matrix_combine 

#Adding it as columns

matrix_comb <-cbind(MatrixA,MatrixB)
matrix_comb


# Arrays

#Compared to matrices, arrays can have more than two dimensions.


# An array with one dimension with values ranging from 1 to 24

array1 <- c(1:24)
array1


# An array with more than one dimension

Multiarray <- array(c(1:24),dim = c(4,3,2))
Multiarray


# Access Array Items
array2 <- c(1:24)
Mult_Array <- array(array2,dim = c(4,3,2))
Mult_Array
Mult_Array[2,3,2]




##### Accessing whole row or column  from  a matrix array####

#Access all the items from first row from matrix one


Array3 <- c(1:24)


multi_array1 <- array(Array3,dim = c(4,3,2))
multi_array1[c(1),,1]


#Access  all the items  from the first column from matrix one

multi_array2 <- array(Array3, dim = c(4,3,2))
multi_array2[,c(1),1]


# Check If an Item Exists

#Check if the value 2 is present in array

array4 <- c(1:24)
multi_array3 <- array(array4,dim = c(4,3,2))
2 %in% multi_array3



  # Amount of rows and columns

array5 <- c(1:30)
multi_array4 <- array(array5,dim =c(4,3,2))
dim(multi_array4)


# Array Length

array6 <- c(1:24)
multi_array5 <- array(array6,dim = c(4,3,2))
length(multi_array5)


# Loop Through array

array7 <- c(1:24)
multi_array6 <- array(array7,dim = c(4,3,2))
for(x in multi_array6){
  print(x)
}






# 5) DATA FRAME

Data_frame <- data.frame(
  Training = c("Stamina","Strength","Others"),
  Pulse = c(150,100,120),
  Duration = c(60,30,45)
)

Data_frame


# Summarize the data

Data_frame1 <- data.frame(
  Training = c("Stamina","Strength","Others"),
  Pulse = c(150,100,120),
  Duration = c(60,30,45)
)
Data_frame1

summary(Data_frame1)


# Access Items from data frame

Data_Frame2 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame2[1]
 
#or

Data_Frame2["Pulse"]

#or

Data_Frame2$Training


# add rows

Data_Frame3 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

# Add new row

New_Row_DF <- rbind(Data_Frame3,c("Strength",112,112))

New_Row_DF


# add columns

Data_Frame4 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

New_col_DF <- cbind(Data_Frame4,Steps = c(6000,4000,1000))
New_col_DF




# Remove rows and columns in Data Frame

Data_Frame5 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame5

new_data_frame <- Data_Frame5[-c(1),-c(1)]
new_data_frame


# Amount of Rows and Columns

dim(new_data_frame)


ncol(new_data_frame)
ncol(new_data_frame)


# Data Frame Length

Data_Frame6 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

length(Data_Frame6)




# Combining Data frame vertically

Data_FrameA <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)


Data_FrameB <- data.frame (
  Training = c("Stamina", "Stamina", "Strength"),
  Pulse = c(140, 150, 160),
  Duration = c(30, 30, 20)
)

New_DF <- rbind(Data_FrameA,Data_FrameB)
New_DF


#Combining Data frame horizontally


Data_FrameC <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_FrameD <- data.frame (
  Steps = c(3000, 6000, 2000),
  Calories = c(300, 400, 300)
)

New_df<- cbind(Data_FrameC,Data_FrameD)
New_df


# 6 Factors

# Factors are used to categorize data.


music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))
music_genre
  #or
levels(music_genre)

# set the levels inside factors

music_genre1 <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"), levels = c("Classic", "Jazz", "Pop", "Rock", "Other"))
music_genre1


music_genre3 <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))
length(music_genre3)


# Access Factors

music_genre4 <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))
music_genre4[5]

# Change Item Value

music_genre5 <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))
music_genre5[3] <- "Pop"
music_genre5[3]


#Q3. Create Data frame with 3 columns and 5 rows and write a code to fetch and delete row and a column using index and add new column and row to the existed data frame


Dataframe <- data.frame(
  Name = c("RAJ","Suraj","Vinit","Vivek","Amey"),
  Language= c("Python","Java","R","C++","SQL"),
   Age= c(26,27,45,28,27)
)
Dataframe

#To Fetch the first and second row

Dataframe[1:2,]

#To fetch the first and second column
Dataframe[,1:2]


# To delete the 4th and 5th Row
New_Data_Frame <- Dataframe[-4:-5,]
New_Data_Frame
Dataframe


# To Delete the 3rd column
Dataframe[,-3]


# Add New  row

Newdf <- rbind(Dataframe,c("Sahil","HTML",29))
Newdf

# Add New Column

NewDF <- cbind(Dataframe,Rank=c(3,5,2,1,4))
NewDF


# Q4.Write nested if else statements to print whether the given number is negative, positive or Zero 


num<- -3
if (num > 0) {
  print("Positive number")
} else if (num == 0) {
  print("0")
} else {
  print("Negative number")
}

#5.write a program to input any value and check whether it is character, numeric or special character




val <- "Hello"
  if (is.numeric(val)) {
    print("Numeric")
  }else if(is.character(val)){
  print("character")
}else {
   print("Special_Character")
   }



# Q6)write difference between break and next also write examples for both


#Break Statement

#The break keyword is a jump statement that is used to terminate the loop at a particular iteration.

# Syntax :

if (test_expression) {
  break
}


#Example

# R program for break statement in for loop

no <- 1:20

for(val in no)
{
  if (val == 10)
  {
    print(paste("Coming out from for loop:",val))
    break
  }
  print(paste("values are:",val))

}



# R Break Statement Example in while loop


x<- 1

while(x<10)
{
  print(x)
  if(x == 5)
    break
  x = x +1
}

#Next Statement

#The next statement is used to skip the current iteration in the loop and move to the next iteration without exiting from the loop itself.

numb <- 1:10

for(val in numb)
{
  if(val == 6)
  {
    print(paste("skipping for loop where i=:",val))
    next
  }
    print(paste("values are:",val))
}

# Next Statement in while loop

x <- 1

while(x<5)
{
  x<-x+1;
  if(x == 3)
    next;
  print(x)
}

#Q7.write a program to print a given vector in reverse format


x= c(1,5.6,3,10,3.5,5)
print("Original Vector:")
print(x)

reverse = rev(x)
print("reverse vector:")
print(reverse)

#  Q8.write a program to get the mode value of the given vector (‘a’,’b’,’c’,’t’,’a’,’c’,’r’,’a’,’c’,’t’,’z’,’r’,’v’,’t’,’u’,’e’,’t’)



# Create the function.
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Create the vector with characters.
charv <- c('a','b','c','t','a','c','r','a','c','t','z','r','v','t','u','e','t')

# Calculate the mode using the user function.
result <- getmode(charv)
print(result)


# Q9.Write a function to filter only data belongs to ‘setosa’ in species of Iris dataset.( using dplyr package) 


install.packages("dplyr")
library("dplyr")


iris_setosa <- iris %>% filter(Species == "setosa")
head(iris_setosa)


#Q10.Create a new column for iris dataset with the name of Means_of_obs, which contains mean value of each row.( using dplyr package)



col2 <- mutate(iris,Means_of_obs = mean(Sepal.Length))
col2


#Q11.Filter data for the “versicolor” and get only ‘sepel_length’ and Sepel _width’ columns.( using dplyr package)



library(dplyr)
iris %>%
  select(Sepal.Width,Sepal.Length,Species) %>%
  filter(Species=="versicolor")

#@12.create below plots for the mtcars also write your inferences for each and every plot (use ggplot package) Use Different ( Size , Colour )




install.packages("ggplot2")

#•	scatter plot

library(ggplot2)
ggplot(mtcars,aes(x = drat, y = mpg)) +
  geom_point()


ggplot(mtcars,aes(x=drat, y = mpg)) +
  geom_point(aes(color = factor(gear))
             
      
             
             
#boxplot



install.packages("ggplot2")

library(ggplot2)

mtcars$cyl = factor(mtcars$cyl)
ggplot(mtcars,aes(x=cyl,y=disp))+geom_boxplot()


#Histogram

ggplot(data = mtcars, aes(x = mpg,fill= mpg)) + geom_histogram( )



# Bargraph

ggplot(mpg, aes(x= class,fill = class)) + geom_bar() 


# Line graph


ggplot(data = mpg) + 
geom_smooth(mapping = aes(x = displ, y = hwy))





###########################End################################################









