## These two functions create a caching mechanism for the inverse of a
## square matrix. If the matrix has not changed then the cacheSolve()
## function will return a cached result instead of inverting the matrix
## again.

## This function returns a list of functions.
##  setMatrix(matrix) - saves the matrix passed to the function
##  getMatrix() - returns the matrix saved with setMatrix()
##  setInverse() - saves the inverse of a matrix
##  getInverse() - returns the inverse of the matrix
makeCacheMatrix <- function(mat = matrix()) {
    invert <- NULL
    setMatrix <- function(p.mat) {
        mat <<- p.mat
        invert <<- NULL
    }
    getMatrix <- function() mat  # Simply return the matrix
    setInverse <- function(p.inv) invert <<- p.inv
    getInverse <- function() invert
    list(setMatrix = setMatrix,
         getMatrix = getMatrix,
         setInverse = setInverse,
         getInverse = getInverse)
}


## This function returns the inverse of the matrix stored in the
## makeCacheMatrix object. If the inverse has already been calculated
## this function returns the stored value. Otherwise, the inverse
## of the matrix is calculated and stored.
cacheSolve <- function(p.mat, ...) {
    ## Return a matrix that is the inverse of 'x'
    invert <- p.mat$getInverse()
    if(!is.null(invert)) {
        message("getting cached data")
        return(invert)
    }
    data <- p.mat$getMatrix()
    invert <- solve(data)
    p.mat$setInverse(invert)
    invert
}