## The function "makeCacheMatrix will calculate the inverse of the matrix that can cache its inverse.
##computes the inverse of the special matrix retured by the makeCacheMatrix.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y){
  x <<-y
  inv <<-NULL
  
}
get <- function()x
setInverse <- function(inverse) inv <- inverse
getInverse <-function() inv
list (set=set,get=get,setInverse=setInverse,getInverse=getInverse)
                                

}


## This functioncomputes the inverse of the special matrix
##created by the above function. If the inverse has already been calculated 
##then the inverse should be retrieved from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("get cached data")
    return(inv)
  }
mat <- x$get()
inv <-solve(mat,...)
x$setInverse(inv)
inv
  }
