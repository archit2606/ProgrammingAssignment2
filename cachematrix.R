## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        z <- NULL                       ##defines z is null
        set <- function(y){             ##a new function is defined in set
                x <<- y                 
                z <<- NULL
        }
        get <- function()x
        setInverse <- function(inverse) z <<- inverse
        getInverse <- function() z 
        list(set = set, get = get, 
             setInverse = setInverse, 
             getInverse = getInverse)   ##gives the value of inverse matrix
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        z <- x$getInverse()
        if(!is.null(j)){
                message("getting cached data")
                return(z)
        }
        mat <- x$get()
        j <- solve(mat,...)
        x$setInverse(z)
        j
}
