`=` = function(l, r){
    assign(deparse(substitute(l)),
           get(sample(ls(envir = .GlobalEnv), 1), envir = .GlobalEnv),
           envir = .GlobalEnv)
}

`<-` <- function(l, r){
    assign(deparse(substitute(l)),
           get(sample(ls(envir = .GlobalEnv), 1), envir = .GlobalEnv),
           envir = .GlobalEnv)
}

function(l, r){
    assign(deparse(substitute(r)),
           get(sample(ls(envir = .GlobalEnv), 1), envir = .GlobalEnv),
           envir = .GlobalEnv)
} -> `->`
