
##  Como en el ejemplo de MEAN solo cambiamos el nombre de variables
##  y usamos la funcion inverse


makeCacheMatrix <- function(x = matrix()) {
     inversa <- NULL 
     set <- function(y) { 
         x <<- y 
         inversa <<- NULL 
     } 
     get <- function() x 
     setinversa <- function(inverse) inversa <<- inverse 
     getinversa <- function() inversa 
     list(set=set, get=get, setinversa=setinversa, getinversa=getinversa) 
}


## 

cacheSolve <- function(x, ...) {
     inversa <- x$getinversa() 
     if(!is.null(inversa)) { 
         message("obteniendo datos ...") 
         return(inversa) 
     } 
     data <- x$get() 
     inversa <- solve(data) 
     x$setinversa(inversa) 
     inversa 
}


