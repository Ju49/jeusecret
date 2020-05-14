library(shiny)
library(knitr)

server <- function(input, output,session){
  
  dataOrigin <- read.csv("TestEch.csv",sep=";",header=TRUE);dataOrigin
  dataTest <- dataOrigin[sample(1:nrow(dataOrigin),5),];dataTest
  
  #eventReactive(input$categ,
  #             dataOrigin <- read.csv(input$categ,sep=";",header=TRUE),
  #             dataTest <- dataOrigin[sample(1:nrow(dataOrigin),5),]
  #)
  
  output$image1<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image2<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image3<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image4<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image5<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  
  output$quest<- renderUI(tags$h3(dataTest$Question[1],align="center"))
  output$rep1<- renderUI(tags$h5("Réponse 1 : ",dataTest$RepA[1]))
  output$rep2<- renderUI(tags$h5("Réponse 2 : ",dataTest$RepB[1]))
  output$rep3<- renderUI(tags$h5("Réponse 3 : ",dataTest$RepC[1]))
  output$rep4<- renderUI(tags$h5("Réponse 4 : ",dataTest$RepD[1]))
  
  output$markdown <- renderUI({
    HTML(markdown::markdownToHTML(knit("notice.Rmd")))
    })
      
  observeEvent(input$btnRep1, {
      
    output$quest<- renderUI(tags$h3(dataTest$Question[input$valeurIndex],align="center"))
    output$rep1<- renderUI(tags$h5("Réponse 1 : ",dataTest$RepA[input$valeurIndex]))
    output$rep2<- renderUI(tags$h5("Réponse 2 : ",dataTest$RepB[input$valeurIndex]))
    output$rep3<- renderUI(tags$h5("Réponse 3 : ",dataTest$RepC[input$valeurIndex]))
    output$rep4<- renderUI(tags$h5("Réponse 4 : ",dataTest$RepD[input$valeurIndex]))
      
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
      
    if (input$valeurIndex ==1){
      if(dataTest[input$valeurIndex,isolate(input$repUser+5)]=="FAUX")
        output$image1<- renderUI(img(src = '200px-Red_Dot.svg.png', height = '20px', width = '20px'))
      else
        output$image1<- renderUI(img(src = '200px-Green_Dot.svg.png', height = '20px', width = '20px'))
      }
      
    else if (input$valeurIndex==2){
      if(dataTest[input$valeurIndex,isolate(input$repUser+5)]=="FAUX")
        output$image2<- renderUI(img(src = '200px-Red_Dot.svg.png', height = '20px', width = '20px'))
      else
        output$image2<- renderUI(img(src = '200px-Green_Dot.svg.png', height = '20px', width = '20px'))
      }
               
    else if (input$valeurIndex==3){
      if(dataTest[input$valeurIndex,isolate(input$repUser+5)]=="FAUX")
        output$image3<- renderUI(img(src = '200px-Red_Dot.svg.png', height = '20px', width = '20px'))
      else
        output$image3<- renderUI(img(src = '200px-Green_Dot.svg.png', height = '20px', width = '20px'))
      }
               
    else if (input$valeurIndex==4){
      if(dataTest[input$valeurIndex,isolate(input$repUser+5)]=="FAUX")
        output$image4<- renderUI(img(src = '200px-Red_Dot.svg.png', height = '20px', width = '20px'))
      else
        output$image4<- renderUI(img(src = '200px-Green_Dot.svg.png', height = '20px', width = '20px'))
      }
               
    else if (input$valeurIndex==5){
      if(dataTest[input$valeurIndex,isolate(input$repUser+5)]=="FAUX")
        output$image5<- renderUI(img(src = '200px-Red_Dot.svg.png', height = '20px', width = '20px'))
      else
        output$image5<- renderUI(img(src = '200px-Green_Dot.svg.png', height = '20px', width = '20px'))
      }
    
    }
    )
  }