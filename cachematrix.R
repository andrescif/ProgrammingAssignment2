## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        invr <- NULL            #Create the value for the inverse
        set <- function(y){     #Set the value of the matrix
                x <<- y
                invr <<- NULL
        }
        get <- function() {x}   #Get the value of the matrix
        setinvr <- function(inverse){invr <<- inverse}  #Set the value of the inverse
        getinvr <- function(){invr}                     #Get the vaulue of the inverse
        list(set=set,
             get=get,
             setinvr=setinvr,
             getinvr=getinvr)
}

## Write a short comment describing this function
#This function creates the matrix and it's inverse and stores it. Using <<- allows for the
#defined varible to be used in the various levels of the function.

cacheSolve <- function(x, ...) {
        invr <- x$getinvr() ## Return a matrix that is the inverse of 'x'
        if(!is.null(invr)){
                message("getting cached data")
                return(invr)
        }
        mat <- x$get()
        invr <- solve(x,...)
        x$setinvr(invr)
        invr
}


