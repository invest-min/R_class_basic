# Function

fn <- function(x) x * .3025
fn(100)

fn <- function(x) {
  py <- round(x * .3025, digits=2)
  rs <- paste0(x, "m2 is ", py, "py")
  return(rs)
}
fn(100)
fn(c(100, 200))
fn(matrix(c(100, 200, 300, 400), 2))

fn
fn2 <- fn
fn2

fn2 <- function(x) {
  py <- round(x * .3025, digits=2)
  rs <- paste0(x, "m2 is ", py, "py")
}
fn2(100)
print(fn2(100))

fn2 <- function(x) {
  py <- round(x * .3025, digits=2)
  paste0(x, "m2 is ", py, "py")
}
fn2(100)

fn <- function(x) {
  if(!is.numeric(x)) return("Not a number")
  py <- round(x * .3025, digits=2)
  rs <- paste0(x, "m2 is ", py, "py")
  return(rs)
}
fn("a")
fn(100)
fn(a)

# Arguments

fn <- function(x, unit) {
  if(!is.numeric(x)) return("Not a number")
  if(unit=="py") area <- round(x * .3025, digits=2)
  if(unit=="sqft") area <- round(x * 10.7639, digits=2)
  if(unit!="py" & unit!="sqft") return("Unit is Not py nor sqft")
  rs <- paste0(x, "m2 is ", area, unit)
  return(rs)
}
fn("a")
fn(100)
fn(100, "py")
fn(100, "sqft")
fn(100, "acre")

fn <- function(x, unit="py") {
  if(!is.numeric(x)) return("Not a number")
  if(unit=="py") area <- round(x * .3025, digits=2)
  if(unit=="sqft") area <- round(x * 10.7639, digits=2)
  if(unit!="py" & unit!="sqft") return("Unit is Not py nor sqft")
  rs <- paste0(x, "m2 is ", area, unit)
  return(rs)
}
fn(100)

fn <- function(x, unit="py", ...) {
  if(!is.numeric(x)) return("Not a number")
  if(unit=="py") area <- round(x * .3025, ...)
  if(unit=="sqft") area <- round(x * 10.7639, ...)
  if(unit!="py" & unit!="sqft") return("Unit is Not py nor sqft")
  rs <- paste0(x, "m2 is ", area, unit)
  return(rs)
}
fn(100)
fn(100, digits=2)

fn <- function(x, unit="py", digits=2) {
  if(!is.numeric(x)) return("Not a number")
  if(unit=="py") area <- round(x * .3025, digits=2)
  if(unit=="sqft") area <- round(x * 10.7639, digits=2)
  if(unit!="py" & unit!="sqft") return("Unit is Not py nor sqft")
  rs <- paste0(x, "m2 is ", area, unit)
  return(rs)
}
fn(100)
fn(100, digits=4)

fn <- function(x, unit="py", FUN=round, ...) {
  if(!is.numeric(x)) return("Not a number")
  if(unit=="py") area <- FUN(x * .3025, ...)
  if(unit=="sqft") area <- FUN(x * 10.7639, ...)
  if(unit!="py" & unit!="sqft") return("Unit is Not py nor sqft")
  rs <- paste0(x, "m2 is ", area, unit)
  return(rs)
}
fn(100)
fn(100, digits=2)
fn(100, FUN=signif, digits=3)
fn(100, FUN=floor)
fn(100, FUN=ceiling)

fn <- function(a, b, c) {
  if(a==0) {
    roots <- c("Not Quadratic Equation")
  } else {
    d <- b^2 - 4*a*c
    if(d>0) {
      roots <- c((-b-sqrt(d))/(2*a), (-b+sqrt(d))/(2*a))
    } else if(d==0) {
      roots <- -b/(2*a)
    } else {
      roots <- c("No Real Root")
    }
  }
  return(roots)
}

fn(2, -5, -6)

rm(list=ls())
