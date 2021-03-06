library(shiny)
library(knitr)

server <- function(input, output,session){
  
  output$image1<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image2<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image3<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image4<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image5<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  
  output$markdown <- renderUI({
    HTML(markdown::markdownToHTML(knit("notice.Rmd")))
  })
  
  observeEvent(input$catego, {
    
    categorie <- input$catego
    
    if (categorie == 1) {
      dataOrigin <- read.csv("Paroles.csv",sep=";",header=TRUE)#;dataOrigin
    }
    else {
      dataOrigin <- read.csv("Replique.csv",sep=";",header=TRUE)#;dataOrigin
    }
    
    dataTest <- dataOrigin[sample(1:nrow(dataOrigin),5),]#;dataTest
    
    output$quest<- renderUI(tags$h3(dataTest$Question[1],align="center"))
    output$rep1<- renderUI(tags$h5("Réponse 1 : ",dataTest$RepA[1]))
    output$rep2<- renderUI(tags$h5("Réponse 2 : ",dataTest$RepB[1]))
    output$rep3<- renderUI(tags$h5("Réponse 3 : ",dataTest$RepC[1]))
    output$rep4<- renderUI(tags$h5("Réponse 4 : ",dataTest$RepD[1]))
      
    observeEvent(input$btnRep1, {
      
      output$quest<- renderUI(tags$h3(dataTest$Question[input$valeurIndex],align="center"))
      output$rep1<- renderUI(tags$h5("Réponse 1 : ",dataTest$RepA[input$valeurIndex]))
      output$rep2<- renderUI(tags$h5("Réponse 2 : ",dataTest$RepB[input$valeurIndex]))
      output$rep3<- renderUI(tags$h5("Réponse 3 : ",dataTest$RepC[input$valeurIndex]))
      output$rep4<- renderUI(tags$h5("Réponse 4 : ",dataTest$RepD[input$valeurIndex]))
      
      Gain <-0
      
      if (input$index<=5){
        updateTextInput(session,
                        inputId = "index",
                        value = as.numeric(isolate(input$index))+1
                        )
        }
      
      if (input$index<=5){
        updateNumericInput(session,
                           inputId = "valeurIndex",
                           value = input$index)
        }
      
      if(input$valeurIndex ==1){
        if(dataTest[input$valeurIndex,isolate(as.numeric(input$repUser)+5)]=="FAUX")
          output$image1<- renderUI(img(src = '200px-Red_Dot.svg.png', height = '20px', width = '20px'))
        else {
          output$image1<- renderUI(img(src = '200px-Green_Dot.svg.png', height = '20px', width = '20px'))
          Gain <- 1}
        }
      
      else if (input$valeurIndex==2){
        if(dataTest[input$valeurIndex,isolate(as.numeric(input$repUser)+5)]=="FAUX")
          output$image2<- renderUI(img(src = '200px-Red_Dot.svg.png', height = '20px', width = '20px'))
        else {
          output$image2<- renderUI(img(src = '200px-Green_Dot.svg.png', height = '20px', width = '20px'))
          Gain <- Gain + 1 }
        }
      
      else if (input$valeurIndex==3){
        if(dataTest[input$valeurIndex,isolate(as.numeric(input$repUser)+5)]=="FAUX")
          output$image3<- renderUI(img(src = '200px-Red_Dot.svg.png', height = '20px', width = '20px'))
        else {
          output$image3<- renderUI(img(src = '200px-Green_Dot.svg.png', height = '20px', width = '20px'))
          Gain <- Gain + 1 }
        }
      
      else if (input$valeurIndex==4){
        if(dataTest[input$valeurIndex,isolate(as.numeric(input$repUser)+5)]=="FAUX")
          output$image4<- renderUI(img(src = '200px-Red_Dot.svg.png', height = '20px', width = '20px'))
        else {
          output$image4<- renderUI(img(src = '200px-Green_Dot.svg.png', height = '20px', width = '20px'))
          Gain <- Gain + 1 }
        }
      
      else if (input$valeurIndex==5){1
        if(dataTest[input$valeurIndex,isolate(as.numeric(input$repUser)+5)]=="FAUX")
          output$image5<- renderUI(img(src = '200px-Red_Dot.svg.png', height = '20px', width = '20px'))
        
        else {
          output$image5<- renderUI(img(src = '200px-Green_Dot.svg.png', height = '20px', width = '20px'))
          Gain <- Gain + 1 }
        
        output$quest <-  renderUI(tags$h2("Bravo! vous avez répondu à toutes les questions !"))
        output$rep1<- renderUI(tags$h5("Réponse 1 : "))
        output$rep2<- renderUI(tags$h5("Réponse 2 : "))
        output$rep3<- renderUI(tags$h5("Réponse 3 : "))
        output$rep4<- renderUI(tags$h5("Réponse 4 : "))
        #renderText("Bravo! vous avez répondu à toutes les questions et vous avez obtenu ", Gain, "points" )
        #problème la valeur de Gain n'est pas bonne, elle reste à 1
        }
      }
      )
    }
    )
  
  output$listejoueurs <- renderTable({
    tabjoueur <- data.frame("Prenom"= c(input$name1,input$name2), 
                            "Nom" =c(input$surname1,input$surname2), 
                            "Age"=c(input$age1,input$age2), 
                            "Nationalite" = c(input$nationalite1,input$nationalite2), 
                            "Profession" = c(input$job1,input$job2),
                            "Sexe"=c(input$sexe1,input$sexe2))
    })
  
  lecture <- read.csv("tab.csv", header=TRUE, sep=";")
  
  datajoueur <- reactive({
    
    tabjoueur <- data.frame("Prenom"= c(input$name1,input$name2), 
                            "Nom" =c(input$surname1,input$surname2), 
                            "Age"=c(input$age1,input$age2), 
                            "Nationalite" = c(input$nationalite1,input$nationalite2), 
                            "Profession" = c(input$job1,input$job2),
                            "Sexe"=c(input$sexe1,input$sexe2))
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