library(datasets)
library(shiny)


ui <- fluidPage(
  
        tags$h1 ("Presentation generale des utilisateurs:", style= "color:dark", align= "center"),
  
   column(6,
         tags$h2("Joueur 1",style="color:blue",align= "center"),
         sidebarPanel(width=80,
                      textInput ("name1", "Indiquez votre prenom:"),
                      textInput("surname1","Indiquez votre nom:"),
                      selectInput("age1", "Quel age avez-vous?", c(15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30)),
                      selectInput("nationalite1", "Quelle est votre nationalite? ", c("Allemande","Anglaise","Americaine","Belge","Francaise","Italienne","Japonaise","Russe","Suisse")),
                      textAreaInput("job1", "Quelle est votre profession ?", rows = 4),
                      radioButtons("sexe1", "Indiquez ci-dessous votre sexe :", c("Femme", "Homme")),
  )
),

  column(6,
         tags$h2("Joueur 2", style= "color:red", align= "center"),
         sidebarPanel(width=80,
                      textInput ("name2", "Indiquez votre prenom:"),
                      textInput("surname2","Indiquez votre nom:"),
                      selectInput("age2", "Quel age avez-vous?", c(15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30)),
                      selectInput("nationalite2", "Quelle est votre nationalite? ", c("Allemande","Anglaise","Americaine","Belge","Francaise","Italienne","Japonaise","Russe","Suisse")),
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
  
  downloadButton ("dld", "Telechargement")
    )
  )

)

