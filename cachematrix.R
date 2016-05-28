## I'll be perfectly honest, I understood the assignment but
## what I did was copy the README.md code from the mean example, 
## and replaced getmean and setmean with the relative functions
## to try and achieve the goal.  Plus a lot of help from stackoverflow

## This function creates a special "matrix" object that can 
## cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## This function computes the inverse of the special matrix
## i created above in makeCacheMatrix.
## same as with the above, I simply used the already provided
## code and adjusted it for the assignment - used the 'solve()' 
## function to calculate the inverse. 

cacheSolve <- function(x, ...) {
        inv <- x$getInverse()
        if (!is.null(inv)) {
                message("retrieving your cached data... here you go")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}

## struggled a lot with an error "inverse" function with no default.  
## was informed my function names were the problem and ended up using
## setinverse instead invertedMatrix.  No idea why. 
