## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
     m<-NULL
     set<-function(y){
          x<<-y
          m<<-NULL
     }
     get<-function() x
     setmatrix<-function(solve) m<<- solve
     getmatrix<-function() m
     list(set=set, get=get,
          setmatrix=setmatrix,
          getmatrix=getmatrix)
}


## When you create a matrix inverse, it is stored in m. If you need that inverse again instead of calculating it again it will copy it from m.

cacheSolve <- function(x=matrix(), ...) {
     m<-x$getmatrix()
     if(!is.null(m)){
          message("getting cached data")
          return(m)
     }
     matrix<-x$get()
     m<-solve(matrix, ...)
     x$setmatrix(m)
     m
}
        ## Return a matrix that is the inverse of 'x'
