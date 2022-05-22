## required per Assignment 2 for Week 3 of R Programming, this set of
##functions caches the inverse of an existing matrix, then returns that inverse.

## makeCacheMatrix : sets & gets elements of given matrix of x, then its
## inverse to be called

makeCacheMatrix <- function(x = matrix()) { # nolint
        inverted <- NULL
        set <- function(y) {
                x <<- y
                inverted <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inverted <<- inverse # nolint # nolint
        getinverse <- function() inverted # nolint
        list(get = get, set = set,
            setinverse = setinverse,
            getinverse = getinverse)
}

## cacheSolve: 1) checks for existing cached data for inverted; returns inverted
## 2) else, calculates inverse of matrix as inverted; returns inverted

cacheSolve <- function(x, ...) { # nolint
        inverted <- x$getinverse()
        if(!is.null(inverted)) {
        message("getting cached data")
        return(inverted)
}
x_matrix <- x$get()
inverted <- solve(x_matrix, ...)
x$setinverse(inverted)
inverted
}
