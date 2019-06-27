## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Built exactly like the Cachemean example 

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  set <- function(y) {
    x <<- y
    inverseMatrix <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inverseMatrix <<- inverse
  getInverse <- function() inverseMatrix
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}
## to test try:
## matx <- matrix(c(2,4,3,1),nrow=2,ncol=2)
## maty <- makeCacheMatrix(matx)



## Write a short comment describing this function
## Built exactly like the Cachemean example 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getInverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  datmatrix <- x$get()
  inverse <- solve(datmatrix, ...)
  x$setInverse(inverse)
  inverse
}

## to test try:
## cacheSolve(maty)
## matx%*%solve(matx). You will get the identity matrix 
