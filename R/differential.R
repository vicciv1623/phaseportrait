# build polynomial class
Differential<-S7::new_class("Differential",
                      properties=list(
                        equation=S7::class_character
                      ),
                      validator=function(self){
                        if(!is.character(self@equation)){
                          "@equation must be a string"
                        }
                      })


