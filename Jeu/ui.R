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
                                             
                                             radioButtons("chx",
                                                          label = dataTest$Question[r],
                                                          choices = c(dataTest$RepA[r],
                                                                      dataTest$RepB[r],
                                                                      dataTest$RepC[r],
                                                                      dataTest$RepD[r])
                                                          ),
                                             
                                             actionButton("btnRep1",
                                                          "Valider la saisie",
                                                          align = "center"
                                                          ),
                                            
                                             textOutput("txtRep")
                                             
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

    