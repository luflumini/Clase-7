# Luca Flumini
# Ejercicio 1

#1.
A<-matrix(1:20, nrow=5)
B<-matrix(1:8,nrow=4)

#2.
A%%B

#3.
C<-matrix(1:8,nrow=4)
B*C

#4.
cbind(t(A),B)

#Ejercicio 2

#1.
x<-c(2,5,9)
y<-c(6,5,8)
for(x in Y) {
  print(x / y)
}

#2.
x <- c(2, 5, '-', 5, 3, '-')
for(i in 1:length(x)) 
  if (x[i]=="-") {x[i]='NA'}

#3.
y<-c(3,8,5,8,7,4)
for(i in 1:length(y)) {
  if (y[i]%%2 == 0) {
    y[i] = y[i]
  } else {
    y[i] = 0
  }
} 
#Ejercicio 3

#1. 
miMedia <- function(x) {
  if (!is.numeric(x)) {
    stop(
      "Ups, esta función necesita valores numéricos",
      "me diste un objeto de clase:",
      class(x[1])
    )
  }
  return(sum(x) / length(x))
}
all.equal(miMedia(1:100),mean(1:100))
#2.
miVarianza <- function(x) {
  N <- length(x)
  bar_x <- sum(x) / N
  V <- sum((x - bar_x) ^ 2) / (N - 1)
  return(V)
}
all.equal(miVarianza(1:10),var(1:10))
