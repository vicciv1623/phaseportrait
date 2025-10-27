#' Differential class
#'
#' @param x a character
#'
#'
#' @section Properties:
#' \describe{
#'  \item{equation}{The basis for an ODE}
#' }
#'
#' @export
Differential<-S7::new_class("Differential",
                      properties=list(
                        equation=S7::class_character
                      ),
                      validator=function(self){
                        if(!is.character(self@equation)){
                          "@equation must be a string"
                        }
                      },
                      constructor=function(x){
                        S7::new_object(
                          S7::S7_object(),
                          equation=x
                        )
                      })

#' @name print.Differential
#' @title print Method for Differential object
#'
#' @description
#' Print the equation of the function
#'
#' @param x An object of class `Differential`
#' @returns Invisibly returns `x`
#'
#' @examples
#' d<-Differential("-3y")
#' d   #implicit print
#' print(d)    #explicit print
#'
#' @method print Differential
S7::method(print, Differential)<-function(x){
  cat("Function:", x@equation)
  invisible(x)
}
