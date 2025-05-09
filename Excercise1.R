#control+shift+N to open new script

age <- c(23,26,24,26)

attributes(age)
names(age)

#NULL - the object is empty

#assigning names to a vector
names(age) <- c("George","John","Paul","Ringo")
age

attributes(age)
names(age)

names(age)<-c("George Harrison","John Lennon","Paul McCartney","Ringo Starr")
age

#removing the names
names(age) <- NULL
age
attributes(age)

?attributes


#Indexing and slicing 
n.deck<-c(6,7,8,9,10)
deck<-c("Duke","Assassin","Captain","Ambassador","Contessa")
#how do you select a value from an object? 
#vector.name[n] 
deck[4]
deck[-4]
#vector.name[c(n1,n2,n3)] <- indexing numeric vector
deck[c(1,3,5)]
#indexing by name 
#named.vector["value name]
names(n.deck) <- deck
n.deck
n.deck["Contessa"]
n.deck[c("Contessa","Duke","Ambassador")]

#Slicing - vector.name[n1:nk] - selecting several consecutive values at once 
n.deck[3:5]

lv<-seq(10,100,by=10)
print(lv)

#vector.name[-(n1:nk)]
lv[-(4:7)]
#slicing can be done using a comparison operator 
lv[lv>30]









#dimentions arguments dim(object.to.transform) <-c(n,m) -
#bend the object.to.transform into a 2D object with n row and m columns
a<-seq(10,120,by=10)
dim(a)<-c(3,4)
a
typeof(a)
class(a)

#matrix takes at least one argument 
#matrix(data= , nrow= , ncol=, ...)

mtrx<-matrix(1:12, nrow=3)
mtrx
mtrx<-matrix(1:12, ncol=4)
mtrx<-matrix(1:12, ncol=4)
mtrx
mtrx<-matrix(1:12,ncol=4,byrow=TRUE)
MTRX
mtrx
#combing vectors to create a matrix 
usa<-c(1.3,1.5,1.2,1.4,1.5)
usa
de<-c(0.2,0.4,0.7,0.8)
de

ngo<-cbind(usa,de)
ngo

rownames(ngo)<-c("2013","2014","2015","2016","2017")
ngo

#change the orientation of data - transpose
ngo<-t(ngo)
ngo
ind<-c(2,2.2,2.4,2.5,2.6)
#Adding a row to matrix
ngo<-rbind(ngo,ind)
ngo

gdp<-matrix(c(47.9, 41.9, 54.6, 56.2, 57.5, 1.6, 1.6, 1.7),nrow=3,byrow=TRUE, dimnames=list(c("de","usa","ind"), c("2014","2015","2016")))

print(gdp)
             
#subsetting a matrix 
gross<-c(381,1340,318,975,396,960,292,940,302,934,290,897,262,
         879,249,797)
hp.mat<-matrix(gross,nrow=8,byrow=T)
hp.mat

#extracting the value -> [row,column]
hp.mat[6,2] 
#calling an entire row 
hp.mat[6] #with single value it looks for single value NOT row or column
hp.mat[6, ] #<-thats the correct format(extracting row)

#extracting the entire column 
hp.mat[ ,2]
# R will return the value as vector 1D object

#selecting multiple rows hp.mat[c(1,3,7), ]
hp.mat[c(1,3,7),] #it returned a value as matrix
#If you want to save any extractions that you made, 
#just enter the name of the variable you want to create 
#at the beginning of the line and rerun the command

#Vector slicing:same with matrix: vector[c(n1,n2,n3)]
hp.mat[c(1,3,7), ] #if you don't put the , after R 
#will extract ONLY values instead of rows


#subsetting matrices with column names and row names 
colnames(hp.mat)<-c("USA","Worldwide")

rownames(hp.mat) <- c("Hallows Part 2", "Sorcerer's Stone", "Hallows Part 1","Order","Prince","Goblet","Chamber","Prisoner")
hp.mat
hp.mat["Goblet",]
hp.mat[ ,"USA"]

b.office<-c(171.5,292,281.6,460.6,139.3,288)

