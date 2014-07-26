## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(mat = matrix()) {
    ## Add Code
    invert <- NULL
    set <- function(p.mat) {
        mat <<- p.mat
        invert <<- NULL
    }
    get <- function() mat  # Simply return the matrix
    setInvert <- function(p.inv) invert <<- p.inv
    getInvert <- function() invert
    list(set = set, get = get,
         setInvert = setInvert,
         getInvert = getInvert)
    ## End of code
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
