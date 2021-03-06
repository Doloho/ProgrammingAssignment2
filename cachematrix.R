## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
## changes vector stored in main function
	}
	get <- function() x
#returns vector x
	setinverse <- function(solve) m <<- solve
	getinverse <- function() m
		list(set=set, get=get,
		setinverse=setinverse,
		getinverse=getinverse)
##Stores the four functions
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		m <- x$getinverse()
		if(!is.null(m)) {
			message("Getting cached data")
			return(m)
##Verifies that m is not null
		}
		data <- x$get()
		m <- solve(data, ...)
##Calculates the inverse
		x$setinverse(m)
		m
##returns m
}
