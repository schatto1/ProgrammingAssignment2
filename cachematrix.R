## The functions makeCacheMatrix and cacheSolve attempt at making the costly
## processes of matrix inversion less costly by caching the calculated inverse
## matrix, so that the calculation does not need to be done every time the 
## inverse is required.

## makeCacheMatrix has 4 functions:
## 1. set allows the user to access the matrix that was input as an argument
## 2. get allows the user to retrieve the matrix that was input as an argument
## 3. setmatrix allows the user to save the matrix into ma, which is otherwise NULL
## 4. getmatrix allows the user to retrieve the value saved in ma

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


## cacheSolve returns the cached inverse matrix is this was previously calculated
## and already stored by the makeCacheMatrix function. Otherwise, it calculates
## the inverse of the matrix x and stores it using makeCacheMatrix

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
