# build polynomial class
Differential<-new_class("Differential",
                      properties=list(
                        equation=class_character
                      ),
                      validator=function(self){
                        if(!is.character(self@equation)){
                          "@equation must be a string"
                        }
                      })


