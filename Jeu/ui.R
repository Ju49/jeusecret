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
                                       
                         column(4,
                                sidebarPanel(width=80,
                                                           
                                             #tags$h2("Jeu",
                                                     #style="color:blue",
                                                     #align="center"),
                                             
                                             #tags$h3(dataTest$Question[r],align="center"),
                                             #tags$h5("Réponse 1 : ",dataTest$RepA[r]),
                                             #tags$h5("Réponse 2 : ",dataTest$RepB[r]),
                                             #tags$h5("Réponse 3 : ",dataTest$RepC[r]),
                                             #tags$h5("Réponse 4 : ",dataTest$RepD[r]),
                                             
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
                                       
                         column(8,
                                sidebarPanel(width=200,
                                                           
                                             tags$h3("Phrases enregistrées",
                                                     style="color:blue",
                                                     align="center"),                                       
                                             )
                                              
                                ),
                         ),
                                     
                       fluidRow(
                         column(12,offset=60
                                              
                                )
                         )
                                     
                       ),
              
              tabPanel("Paramètres",
                                     
                       tags$h1("Paramétrage du jeu",
                               style="color:black",
                               align="center"),
                                     
                       column(3,offset=15
                                            
                              )
                       )
              )
  )

    