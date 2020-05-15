


server <- function(input, output, session) {
  
  output$listejoueurs <- renderTable({
    tabjoueur <- data.frame("Prenom"= c(input$name1,input$name2), "Nom" =c(input$surname1,input$surname2), "Age"=c(input$age1,input$age2), "Nationalite" = c(input$nationalite1,input$nationalite2), "Profession" = c(input$job1,input$job2),"Sexe"=c(input$sexe1,input$sexe2))
  })

    
  lecture <- read.csv("tab.csv", header=TRUE, sep=";")
  
  datajoueur <- reactive({
    
    tabjoueur <- data.frame("Prenom"= c(input$name1,input$name2), "Nom" =c(input$surname1,input$surname2), "Age"=c(input$age1,input$age2), "Nationalite" = c(input$nationalite1,input$nationalite2), "Profession" = c(input$job1,input$job2),"Sexe"=c(input$sexe1,input$sexe2))
    tab <- rbind(tabjoueur, lecture)
  })
  
 
  
  output$dld <- downloadHandler(
    filename = function() {
      paste("joueur", ".csv", sep = "")
    },
    content= function(file){
      write.csv(datajoueur(), file, row.names = FALSE)
    }
  )
 

}