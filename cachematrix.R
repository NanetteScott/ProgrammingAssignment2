## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x) {
        
  ## Return a matrix that is the inverse of 'x'
  
  m <- x[getrev()]
  if(identical(x,m)) {
    message("getting cached data")
    return(m)
  }else{
  
  m <- rev(x)
  }
  
  m

}
