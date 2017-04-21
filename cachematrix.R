## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

        poo <- NULL
        set <- function(y) {
                x <<- y
                poo <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) poo <<- solve
        getinverse <- function() poo
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
 poo <- x$getinverse()
        if(!is.null(poo)) {
                message("getting cached data")
                return(poo)
        }
        data <- x$get()
        poo <- solve(data)
        x$setinverse(poo)
        poo
}
