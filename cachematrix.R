## The two functions together receive a matrix and perform a matrix inversion
## If the matrix cannot be inverted, the function stops with a warning.
## The <<- operator is used in case the inversion has already been done

## This function builds the recipient matrix structure, and tests to see
## if it has been done before

makeCacheMatrix <- function(x = matrix()) {
  my.matrix<<-x #have we seen you before
  cacheSolve(my.matrix)
}


## This function tests if the matrix can be inverted, and then 
## uses solve() to perfrom an inversion

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  test<-det(x) #set up a test to see if we can invert this matrix
  if (round(test,digit=5)){ #very small values are effectively zero
    stop("Determinant is zero, matrix cannot be inverted")
  }
  inv.x<<-solve(x) #invert the matrix using solve, but <<- in case we did it before
  inv.x #make it the last value so that the function returns it
}
