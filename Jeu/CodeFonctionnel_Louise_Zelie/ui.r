library(datasets)
library(shiny)

Agenat <- read.csv2("AgeNat.csv",header = TRUE,sep = ";")

ui <- fluidPage(
  
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
  
  downloadButton ("dld", "Telechargement")
    )
  )

)

