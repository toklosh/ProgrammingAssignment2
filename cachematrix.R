## Put comments here that give an overall description of what your
 
##...function sets up inverse matrix environment

makeCacheMatrix <- function(x = matrix()) {
  invmatrix<- NULL
  set <- function(y) {
    x <<- y
    invmatrix<<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) invmatrix<<- inverse
  getinverse <- function() invmatrix
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


cacheSolve <- function(x, ...) {
  invmatrix<- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  invmatrix<- solve(data)
  x$setinverse(inv)
  inv
}