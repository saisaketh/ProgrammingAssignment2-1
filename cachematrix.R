## Put comments here that give an overall description of what your
## functions do
## The function makeCacheMatrix takes a matrix x
## Value of inverse matrix x is set with set() function
##Setinverse sets the inverse value of the matrix x.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

m<-NULL
set<-function(y){
x<<-y
m<<-NULL
}
get<-function() x
setinverse<-function(inv_mat) m<<-inv_mat
getinverse<-function() m
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getinverse()
        if(!is.null(m)){
        message("getting cached data")
        return(m)
        }
data<-x$get()
m<-solve(data, ...)
##set inverse assgines value to m
x$setinverse(m)
## M is the inverse of matrix 'x'
m

}
