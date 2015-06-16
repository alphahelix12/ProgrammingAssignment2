

## Used together these two functions will compute the inverse
## of a matrix and cache the result for subsequent usaage


## makeCachMatrix - function takes a square invertable matrix as
## input and returns a list used as input to the cacheSolve() function
makeCacheMatix <- function(x = matrix()) 
{
  inv <- NULL
  set <- function(y) 
    {
      x <<- y ## assigns a value to an object different from the current
              ## enviorment 
      inv <<- NULL
    }
  get <- function() x
  setinv <- function(inverse) inv <<- inverse
  getinv <- function() inv
  list(set = set, get = get, setinv = setinv,
       getinv = getinv)
}

## cachSolve - Function returns a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) 
{
  inv <- x$getinv()
  if(!is.null(inv))        ##if the inverse has been calculated 
    {
      message("getting cached data")
      return(inv)         ##get it from the cache
    }
                          ## else calculate the inverse matrix
  mat.data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  return(inv)
}


