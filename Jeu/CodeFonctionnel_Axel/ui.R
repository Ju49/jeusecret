library(shiny)

ui <- fluidPage(
  
  navbarPage(img(src="isara_schooling_tree.png.png", height = '20px', width = '35px'),
              
             tabPanel("Mode d'emploi",
                      column(12,
                             sidebarPanel(width = 80,
                                          uiOutput("markdown")
                                          )
                             )
                      ),
              
             tabPanel("Jeu",
                      
                      fluidRow(
                        tags$h1("Le jeu des questions !",
                                style="color:green", 
                                align="center"),
                         
                        column(12,
                               sidebarPanel(width=80,
                                             
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
                      ),
              
             tabPanel("Paramètres",
                      fluidRow(
                        tags$h1("Paramètres du jeu",
                                style="color:black", 
                                align="center"),
                         
                        column(12,
                               sidebarPanel(width=80,
                                             
                                            numericInput("valeurIndex",
                                                         "Numéro de l'index : ",
                                                         value = 1,
                                                         min = 1,
                                                         max = 5,
                                                         step = 1
                                                         ),
                                             
                                            textInput("index",
                                                      label = "Index",
                                                      value = 2)
                                            )
                               )
                        )
                      )
             )
  )
              
  

    