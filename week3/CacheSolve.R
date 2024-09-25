CacheSolve <- function(x, ...) {
    #Check if the inverse is already cached
    m <- x$get_inverse()
    # If cached inverse exists, return it
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    # If not, calculate the inverse
    data <- x$get() # Retrieve the matrix
    m <- solve(data, ...) # Compute the inverse using the solve function
    x$set_inverse(m) # Cache the calculated inverse
    m # return the value of incerse
}
