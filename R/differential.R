#' ODEFunction class
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
ODEFunction<-S7::new_class("ODEFunction",
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

#' @name print.ODEFunction
#' @title print Method for ODEFunction object
#'
#' @description
#' Print the equation of the ODEFunction
#'
#' @param x An object of class `ODEFunction`
#' @returns Invisibly returns `x`
#'
#' @examples
#' d<-ODEFunction("-3y")
#' d   #implicit print
#' print(d)    #explicit print
#'
#' @method print ODEFunction
S7::method(print, ODEFunction)<-function(x){
  cat("ODEFunction:", x@equation)
  invisible(x)
}


