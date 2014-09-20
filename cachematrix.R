## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix is a function that return a list of functions.
## Its purpose is to store a matrix and cached a values of the inverse of the matrix

makeCacheMatrix <- function(x = numeric()) {+     
+     # holds the cached value or NULL if nothing is cached
+     # initially nothing is cached so set it to NULL
+     cache <- NULL
+     
+     # store a matrix
+     setMatrix <- function(newValue) {
+         x <<- newValue
+         # since the matrix is assigned a new value, flush the cache
+         cache <<- NULL
+     }
+     
+     # returns the stored matrix
+     getMatrix <- function() {
+         x
+     }
+     
+     # cache the given argument 
+     cacheInverse <- function(solve) {
+         cache <<- solve
+     }
+     
+     # get the cached value
+     getInverse <- function() {
+         cache
+     }
+     
+     # return a list. Each named element of the list is a function
+     list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)

}


## Write a short comment describing this function
## cacheSolve
## This function purpose's is to compute the inverse of special "matrix" which is returned by makeCacheMatrix function

cacheSolve <- function(x, ...) {
+     # get the cached value
+     inverse <- y$getInverse()
+     # if a cached value exists return it
+     if(!is.null(inverse)) {
+         message("getting cached data")
+         return(inverse)
+     }
+     # otherwise get the matrix, caclulate the inverse and store it in
+     # the cache
+     data <- y$getMatrix()
+     inverse <- solve(data)
+     y$cacheInverse(inverse)
+     
+     # return the inverse
+     inverse
}
