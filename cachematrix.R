## The below functions are for Coursera R Programming Programming Assignment 2. They help to
## make a special matrix that can cache its inverse.

## This function helps to make the special matrix that can assign value to it, display them, calculate and display the inverse

makeCacheMatrix <- function(x = matrix()) {
  I <- NULL
  setmatrix <- function(y) {
    x <<- y
    I <<- NULL
  }
  getmatrix <- function() x
  setinverse <- function(solve) I <<- solve
  getinverse <- function() I
  list(setmatrix = setmatrix, getmatrix = getmatrix,
       setinverse = setinverse,
       getinverse = getinverse)
}

## This function checks for an already present inverse in the cache and displays the value if present else calculates it

cacheSolve <- function(x=matrix(), ...) {
  I<-x$getinverse()
  if(!is.null(I)){
    message("getting cached data")
    return(I)
  }
  matrix<-x$getmatrix()
  I<-solve(matrix, ...)
  x$setinverse(I)
  I
}
