##  makeCacheMatrix : This function creates a special "matrix" object that can cache its inverse.
##  cacheSolve : This function computes the inverse of the special "matrix" returned by  makeCacheMatrix  above. If the inverse has already been calculated (and the matrix has not changed), then  cacheSolve  should retrieve the inverse from the cache.


## Create a cached matrix

makeCacheMatrix <- function(x = matrix()) {

  myR = NULL
  
  set <- function(y) {
    x <<- y
    myR <<- NULL
  }
  get <- function() x
  setrev <- function(rev) myR <<- rev
  getrev <- function() myR
  
  list(set = set, get = get, setrev = setrev,getrev = getrev)
  
}


## Check if the cached matrix and the one passed to the function are the same

cacheSolve <- function(x) {
        
  ## Return a matrix that is the inverse of 'x'
  
  m <- x[getrev()]
  if(identical(x,m)) {
    message("getting cached data")
    return(m)
  }else{
  
  m <- solve(x) #inverting the contents of the matrix
  }
  
  m

}
