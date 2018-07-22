hey
x1= 10:20
x1
x1[1]
x1[1:5]
x1[c(3,4,5)]
x1[-1]
mean(x1)
sum(x1)
median(x1)
x1[x1>50]
x1[x1>13&x1<16]
v1=c('A','B','C')
v1
v7=c('A','C')
v7
v1[!v1 %in% v7]

#matrix
?matrix
mymatrix= matrix(1:24,ncol=6,byrow=T)
mymatrix
mymatrix2= matrix(5:24,ncol=5,byrow=F)
mymatrix2
mymatrix2[,1]   #only first column
mymatrix2[2:4,3:4]  #rows2,3,4 and col 3,4
colSums(mymatrix2)
rowMeans(mymatrix2)
rowSums(mymatrix2)
matrix(marks, ncol=6)

#array
myarray=array(1:24, dim=c(4,3,2))
myarray
apply(myarray,1,sum)
apply(myarray,2,sum)
apply(myarray,3,sum)
myarray=array(1:24, dim=c(4,3,2), dimnames=list(c('s1','s2','s3','s4'), c('sub1','sub2','sub3'), c('dep 1','dep2')))
myarray

#data frame
(rollno=c('MBA-01', 'MBA-02'))
(rollno=paste('MBA',1:60, sep='-'))
(name=c('Student1','Student2'))
(name=paste('Student',1:60, sep='-'))
set.seed(189)
(gender=sample(c('M','F'), size=60, replace=T, prob=c(.4,.6)))
table(gender)
prop.table(table(gender))

(marks= rnorm(60, mean=60, sd=15))
x=c(23.3, 34.742)
floor(x);ceiling(x);trunc(x);round(x)
floor(marks)

head(df)
tail(df, n=3)

str(df)
summary(df)
df$gender=factor(df$gender)
str(df)
summary(df)

(grades=sample(c('Excellent','Good','Poor'), size=60, replace=T, prob=c(.2,.3,.5)))
table(grades)  
grades=factor(grades)
summary(grades)
grades=factor(grades, levels=c('Poor','Good','Excellent'), ordered=T)
table(grades)

df=data.frame(rollno, name, gender, marks, grades, stringsAsFactors = F)
df
summary(df)
dim(df)
class(df)
aggregate(df$marks, by=list(df$gender), FUN=sum)
aggregate(df$marks, by=list(df$gender), FUN=mean)
aggregate(marks ~ gender+grades, data=df, FUN=mean)

df$marks2= runif(60,50,100)
head(df)

cbind(grades, gender)
rbind(grades, gender)

df
df[df$gender=='M',]
df[df$gender=='M', c(1,2,4)]
