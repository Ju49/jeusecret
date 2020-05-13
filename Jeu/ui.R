library(shiny)

#colonne : [,X]
#ligne : [X,]

ui <- fluidPage(
                
  tabsetPanel(id="tabset",
                            
              tabPanel("PANNEAU 1",
                       fluidRow(
                         tags$h1("TAG PANNEAU 1",
                                 style="color:green", 
                                 align="center"),
                                       
                         column(3,
                                sidebarPanel(width=80,
                                                           
                                             tags$h2("Exemple Tag",
                                                     style="color:blue",
                                                     align="center"),
                                             
                                             tags$h3(dataTest$Question[r],align="center"),
                                             tags$h5("Réponse 1 : ",dataTest$RepA[r]),
                                             tags$h5("Réponse 2 : ",dataTest$RepB[r]),
                                             tags$h5("Réponse 3 : ",dataTest$RepC[r]),
                                             tags$h5("Réponse 4 : ",dataTest$RepD[r]),
                                             
                                             selectInput("repUser",
                                                       "Numéro de la réponse : ",
                                                       choices = c("1","2","3",4)
                                                       ),
                                             

                                             actionButton("btnRep1",
                                                          "Valider la saisie",
                                                          align = "center"
                                                          ),
                                            
                                             textOutput("txtRep1")
                                             
                                             )
                                ),
                                       
                         column(5,offset=4,
                                sidebarPanel(width=200,
                                                           
                                             tags$h3("Exemple Tag",
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
              
              tabPanel("PANNEAU 2",
                                     
                       tags$h1("TAG PANNEAU 2",
                               style="color:black",
                               align="center"),
                                     
                       column(3,offset=15
                                            
                              )
                       )
              )
  )

    