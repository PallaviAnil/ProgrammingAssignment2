# A pair of functions that cache the inverse of a matrix.


# The first function, 'makeCacheMatrix' creates a matrix and its inverse. 
# It's output a list containing a function to 

# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of the inverse
# 4. get the value of the inverse


makeCacheMatrix <- function(x = matrix()) 
{
        # variable m is declared immediately and assigned the value NULL using 
        #the std assignment order (<-)
        
        m <- NULL
        
        
        set <- function(y)
        {
                x <<- y
                m <<- NULL
                
        }
        
        get <- function()
                
        {
                x     
        }
        
        setinverse <- function(inverse)
                
        {
                m <<- inverse
        }
        
        getinverse <- function()
                
        {
                m
        }
        
        
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

# The following function calculates the inverse of the matrix
# created with the above function. However, it first checks to see if the 
# the inverse has already been calculated. If so, it get's the inverse from the 
# cache and skips the computation. Otherwise, it calculates the inverse of
# the matrix and sets the value of the inverse in the cache via the 'setinverse'
# function

cacheSolve <- function(x, ...)  ## Return a matrix that is the inverse of 'x'
        
{
        m <- x$getinverse()
        if(is.null(m)) 
        {
                data <- x$get()
                data
                m <- solve(data, ...)
                x$setinverse(m)
                
        }
        else
        {
                message("getting cached data")
                return(m)
                
        }
        m # to return the results
        
}





       
