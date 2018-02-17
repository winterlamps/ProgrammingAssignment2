## Put comments here that give an overall description of what your
## functions do
## The function can cache the inverse of a given matrix.
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv<-NuLL
set<-function(y){
x<<-y
inv<<-NULL
}
get<-function()x
setinverse<-function(solve) inv<<-solve
getinverse<-function()inv
list(set=set,get=get,
     setinverse=setinverse,
     getinverse=getinverse)
}


## Write a short comment describing this function
## The function computes the inverse of the given matrix returned by makeCacheMatrix.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv<-x$getinverse()
if(!is.null(inv)){
message("getting cached data")
return(inv)
}
data<-x$get()
inv<-solve(data,...)
x$setinverse(inv)
inv
}
