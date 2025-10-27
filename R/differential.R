#' Differential class
#'
#' @param equation a character
#'
#' Building basis for defining an ODE
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
                      })


