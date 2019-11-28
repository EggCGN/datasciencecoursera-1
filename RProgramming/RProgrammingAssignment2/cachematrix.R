## The following functions provide an alternative to the matrix type.
## It provides a fast retrieval of the inverse of the matix using
## cache (if already computed once) 

## makeCacheMatrix is an alternative to the matrix datatype.
## It is only useful to compute the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) inverse <<- solve
  getinverse <- function() inverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## cacheSolve get the result of solve(X) in a cache
## instead of computing it again (if already computed once)

cacheSolve <- function(x, ...) {
  inverse <- x$getinverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data, ...)
  x$setinverse(inverse)
  inverse
}
