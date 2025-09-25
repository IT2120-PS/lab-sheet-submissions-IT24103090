setwd("C:\\Users\\it24103090\\Desktop\\IT24103090")

data <-read.table("Exercise - LaptopsWeights.txt" ,header = TRUE)
fix(data)
attach(data)

#Q1
popmn  <- mean(Weight.kg.)
popmn
popvar <- var (Weight.kg.)
popvar


#Q2
samples <- c()
n <- c()

for(i in 1:25){
  s <- sample(Weight.kg.,6,replace = TRUE)
  samples <- cbind(samples,s)
  n <- c(n , paste('s' , i))
}

colnames(samples) = n

s.means <- apply(samples ,2, mean)
s.means
s.vars <- apply(samples , 2 , var)
s.vars

#Q3
samplemean <- mean(s.means)
samplemean
samplevars <- var(s.means)
samplevars
