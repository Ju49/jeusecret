library(shiny)

#colonne : [,X]
#ligne : [X,]

ui <- fluidPage(
                
  tabsetPanel(id="tabset",
                            
              tabPanel("Jeu",
                       fluidRow(
                         tags$h1("Le jeu des questions !",
                                 style="color:green", 
                                 align="center"),
                                       
                         column(12,
                                sidebarPanel(width=80,
                                             
                                             actionButton("btnQues1",
                                                          "Nouvelle Question",
                                                          align = "center"
                                             ),
                                             
                                             uiOutput("quest"),
                                             uiOutput("rep1"),
                                             uiOutput("rep2"),
                                             uiOutput("rep3"),
                                             uiOutput("rep4"),
                                             
                                             numericInput("repUser",
                                                       "Numéro de la réponse : ",
                                                       value = 1,
                                                       min = 1,
                                                       max = 4,
                                                       step = 1
                                                       ),
                                             

                                             actionButton("btnRep1",
                                                          "Valider la saisie",
                                                          align = "center"
                                                          ),
                                            
                                             textOutput("txtRep1"),
                                             
                                             uiOutput("image1"),
                                             uiOutput("image2"),
                                             uiOutput("image3"),
                                             uiOutput("image4"),
                                             uiOutput("image5")
                                             
                                             )
                                ),
                         ),
                                     
                       fluidRow(
                         column(12,offset=60
                                              
                                )
                         )
                       )
              )
  )

    