## The functions makeCacheMatrix and cacheSolve attempt at making the costly
## processes of matrix inversion less costly by caching the calculated inverse
## matrix, so that the calculation does not need to be done every time the 
## inverse is required.

## makeCacheMatrix 

makeCacheMatrix <- function(x = matrix())
{
    ma <- NULL
    set <- function(y)
    {
        x <<- y
        ma <<- NULL
    }
    get <- function(x)
    {
        x
    }
    setmatrix <- function(matrix)
    {
        ma <<- matrix
    }
    getmatrix <- function()
    {
        ma
    }
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) 
{
    ## Return a matrix that is the inverse of 'x'
    ma <- x$getmatrix()
    if (!is.null(ma))
    {
        message("getting cached matrix")
        return(m)
    }
    else
    {
        data <- x$get()
        ma <- solve(data)
        x$setmatrix(ma)
        ma
    }
}
