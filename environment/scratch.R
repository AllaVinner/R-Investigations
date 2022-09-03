library('rlang')


a <- 123

###########################################
# Basic environments
#############################################

e1 <- env(a=1, b = F, c =1:3)
e1$d <- 'by asingment'
env_bind(e1, e=e1)
env_print(e1)
identical(current_env(), global_env())
env_parents(e1)


##############################################
# <<-
##############################################

x <- 'in global'

f1 <- function(x) {
  y <- x
  x <<- 'in function 1'
  y
}

f2 <- function(x) {
  x <<- 'in function 2'
  y <- x
  y
}

x1 <- f1(x)
x2 <- f2(x)
print(x)
print(x1)
print(x2)

#################################################
#
#################################################


y <- 1
f <- function(x) x + y
fn_env(f)







