## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

rm(list = ls())
makeCachMatrix <- function(ma = matrix()) {
     im <- NULL
      setMatrix <- function(y) {
             ma <<- y
             im <<- NULL
         }
      getMatrix <- function() ma
       setinverse <- function(inv) im <<- inv
      getinverse <- function() im
     list(setMatrix = setMatrix,
                      getMatrix = getMatrix,
                      setinverse = setinverse,
          getinverse = getinverse)
   }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
      im <- x$getinverse()
     if (!is.null(im)) {
         message("getting cached inverse matrix")
         return(im)
     }
     data <- x$getMatrix()
     i <- solve(data, ...)
     x$setinverse(i)
     i
 }
