mytranspose <- function(x) {
  y <- matrix(1, nrow=ncol(x), ncol = nrow(x))
  for(i in 1:nrow(x)) {
    for(j in 1:ncol(x)) {
      y[j,i] <- x[i,j]
    }
  }
  return(y)
}

#Test1 Pass
myvar1 <- matrix(1:10, nrow=5, ncol=2)
mytranspose(myvar1)

#Test2 Fail
myvar1 <-  matrix(NA, nrow=0, ncol=0)
mytranspose(myvar1)

#Test3 Pass
myvar1 <-  matrix(c(1,2), nrow=1, ncol=2)
mytranspose(myvar1)

#Test4 Pass
myvar1 <-  matrix(c(1,2), nrow=2, ncol=1)
mytranspose(myvar1)

#Test5 Fail
myvar2 <- c(1,2,NA,3)
mytranspose(myvar2)

#Test6 Fail
myvar2 <- c(NA)
mytranspose(myvar2)

#Test7 Fail
myvar2 <- c()
mytranspose(myvar2)

#Test8 Fail
d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata3 <- data.frame(d,e,f)
mytranspose(mydata3)

