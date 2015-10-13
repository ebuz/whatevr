set.seed(Sys.time())
invisible(mapply(function(n, v){assign(n, v, envir = .GlobalEnv);return()},
       sample(ls(envir = .GlobalEnv)),
       lapply(ls(envir = .GlobalEnv), get, envir = .GlobalEnv)))
