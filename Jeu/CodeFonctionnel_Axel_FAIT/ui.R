library(shiny)
library(datasets)

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
                                            
                                            selectInput("catego", "Sélectionner une catégorie: ", 
                                                        selected = 2, multiple = FALSE,
                                                        choices = c("Paroles de chansons" = 1,  
                                                                    "Répliques de films" = 2)
                                            ),
                                             
                                            uiOutput("quest"),
                                            uiOutput("rep1"),
                                            uiOutput("rep2"),
                                            uiOutput("rep3"),
                                            uiOutput("rep4"),
                                             
                                            selectInput("repUser",
                                                        "Numéro de la réponse : ",
                                                        selected = 1, multiple = FALSE,
                                                        choices = c("Réponse 1" = 1, "Réponse 2" = 2, 
                                                                    "Réponse 3" = 3, "Réponse 4" = 4 )),
                                            
                                            #numericInput("repUser",
                                                         #"Numéro de la réponse : ",
                                                         #value = 1,
                                                         #min = 1,
                                                         #max = 4,
                                                         #step = 1
                                                         #),

                                             
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
              
             tabPanel("Profils et données",
                      tags$h1 ("Presentation generale des utilisateurs:", style= "color:dark", align= "center"),
                      
                      column(6,
                             tags$h2("Joueur 1",style="color:blue",align= "center"),
                             sidebarPanel(width=80,
                                          textInput ("name1", "Indiquez votre prenom:"),
                                          textInput("surname1","Indiquez votre nom:"),
                                          selectInput("age1", "Quel age avez-vous?", choices = Agenat$Age),
                                          selectInput("nationalite1", "Quelle est votre nationalite? ",  choices = Agenat$Nationalite),
                                          textAreaInput("job1", "Quelle est votre profession ?", rows = 4),
                                          radioButtons("sexe1", "Indiquez ci-dessous votre sexe :", c("Femme", "Homme")),
                             )
                      ),
                      
                      column(6,
                             tags$h2("Joueur 2", style= "color:red", align= "center"),
                             sidebarPanel(width=80,
                                          textInput ("name2", "Indiquez votre prenom:"),
                                          textInput("surname2","Indiquez votre nom:"),
                                          selectInput("age2", "Quel age avez-vous?", choices = Agenat$Age),
                                          selectInput("nationalite2", "Quelle est votre nationalite? ", choices = Agenat$Nationalite),
                                          textAreaInput("job2", "Quelle est votre profession ?", rows = 4),
                                          radioButtons("sexe2", "Indiquez ci-dessous votre sexe:", c("Femme", "Homme")),
                             )
                      ),
                      
                      tags$h2("Recuperation des donnees:", style= "color:dark", align= "center"),
                      
                      fluidRow(
                        column(8,
                               offset = 4,
                               tableOutput ("listejoueurs"),
                               
                               fileInput("file", NULL , accept = ".csv"),
                               tableOutput("head"),
                               
                               downloadButton ("dld", 
                                               "Telechargement")
                        )
                      )
                      
                      
                      
                      
                      ),
             
             tabPanel("Paramètres",
                      fluidRow(
                        tags$h1("Paramètres du jeu",
                                style="color:black", 
                                align="center"
                                ),
                         
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
                                                      value = 2
                                                      ),
                                            )
                               )
                        )
                      )
             )
  )
              
  

    