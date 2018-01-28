# Create three vectors  x,y,z  with integers and each vector has 3 elements. 
x<-c(0,5,-9)
y<-c(11,7,3)
z<-c(5,4,2)

# Combine the three vectors to become a 3×3 matrix  "A"  where each column represents
# a vector. Change the row names to  a,b,c.

comb<-c(x,y,z)
A<-matrix(comb, nrow=3)
rownames(A)<-c("a","b","c")
A

# Think: How about each row represents a vector, can you modify your code to implement it?
is.matrix(A)
A<-rbind(x,y,z)
A

#OR
A<-matrix(comb, nrow=3, byrow=TRUE)

# Please check your result from Exercise 1, using  is.matrix(A). 

#It should return  TRUE, if your answer is correct. 
#Otherwise, please correct your answer. Hint: Note that  is.matrix()  will return
#FALSE  on a non-matrix type of input. Eg: a vector and so on.

#Create a vector with 12 integers. Convert the vector to a 4*3 matrix  "B" 
vector<-c(1:12)
vector

B<-matrix(vector, nrow=4)
B
#using  matrix(). Please change the column names to  x, y, z  
#and row names to  a, b, c, d.

colnames(B)<-c("x","y","z")
rownames(B)<-c("a","b","c","d")
B


#The argument  byrow  in  matrix()  is set to be  FALSE  by default. 
#Please change it to  TRUE  and print matrix B to see the differences.
B<-matrix(vector, nrow=4, byrow=TRUE)
B

# Do element-wise multiplication of matrix A and matrix B
#the elements in teh same position are multiplied

A*A


# DO matrix multiplication for A and B

A%*%A


# Run the following code to get matrix M

M<-matrix(c(1:15),nrow=5,ncol=3)
M

# get a new variable/vector with only the first column of the matrix
firstColumn<-M[,1]
firstColumn

# make a new matrix with first 4 rows and 1 and 2 columns
mat<-M[1:4,1:2]

mat




#PRACTISING MORE



rm(list=ls())

new_hope<-c(460.998,314.4)
empire_strikes<-c(290.475,247.900)
return_jedi<-c(309.306,165.8)

box_office<-c(new_hope,empire_strikes,return_jedi)

is.matrix(box_office)


star_wars_matrix<-matrix(box_office,nrow=3,byrow=TRUE)
star_wars_matrix
#we can create matrix also with rbind() method, each column becomes a row
star_wars_m1<-rbind(new_hope,empire_strikes,return_jedi)
star_wars_m1
#cbind() each vector becomes a column
star_wars_m2<-cbind(new_hope, empire_strikes,return_jedi)
star_wars_m2


#naming columns
region<-c("US","non_US")
titles<-c("A new hope","The empire striks","Return of the Jedi")

colnames(star_wars_matrix)<-region
star_wars_matrix

rownames(star_wars_matrix)<-titles

star_wars_matrix

#calculates sum of each column
combined_vector<-colSums(star_wars_matrix)
combined_vector

rowSums(star_wars_matrix)


# subsetting
star_wars_matrix[1,2]

new_hope<-star_wars_matrix[1,]
new_hope

US<-star_wars_matrix[,1]
US
star_wars_matrix[1,1]

#subsetting by names

star_wars_matrix[,"non_US"]

# standart arithmetic OPERATIONS
my_matrix<-star_wars_matrix*2
my_matrix

#







