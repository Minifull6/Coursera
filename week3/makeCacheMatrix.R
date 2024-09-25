makeCacheMatrix <- function(x = matrix()){
    # give a variable to store the inverse
    m <- NULL
    # set the value of the matrix
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    # get the value of the matrix
    get <- function() x
    # set the inverse of the matrix
    set_inverse <- function(inverse) m <<- inverse
    # get the cache inverse
    get_inverse <- function() m
    # Return a list of functions to interact with the matrix and its inverse
    list(set = set, get = get, set_inverse = set_inverse, get_inverse = get_inverse)
}
