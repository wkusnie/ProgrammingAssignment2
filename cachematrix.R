## Put comments here that give an overall description of what your
## functions do

## By this function we can create a matrix object. Moreover, this object can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

}


## By this function we can compute the inverse of the matrix we created in a function above. If the matrix didn't 
## change and the inverse was calculated we can retrieve the inverse from this cache and not count it again.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

makeCacheMatrix<-function(x=matrix()){
        inv<-NULL
        set<-function(y){
                x<<-y
                Inv<<-NULL
        }
        get <-function()x
        setInverse<-function(inverse)inv<<-inverse
        getInverse<-function()inv
        list(set=set,
             get=get,
             setInverse=setInverse,
             getInverse=getInverse)
}
cacheSolve<-function(x,...){
        inv<-x$getInverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        mat<-x$get()
        inv<-solve(mat,...)
        x$setInverse(inv)
        inv
}
