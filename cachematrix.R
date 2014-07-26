## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    my_code <- NULL
    set <- function(y) {
        x <<- y
        my_code <<- NULL
    }
    get <- function() x
    setinverse<- function(inverse) my_code <<-inverse
    getinverse <- function() my_code
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}



## Write a short comment describing this function

## The function cacheSolve returns the inverse of a matrix A created with
## the makeCacheMatrix function.
## If the cached inverse is available, cacheSolve retrieves it, while if
## not, it computes, caches, and returns it.
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    my_code <- x$getinverse()
    if (!is.null(my_code)) {
        message("getting inverse")
        return(my_code)
    } else {
        my_code <- solve(x$get())
        x$setinverse(my_code)
        return(my_code)
    }
}

