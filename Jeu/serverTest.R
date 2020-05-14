library(shiny)

server <- function(input, output,session){
  
  #r <- 0
  #output$txtRep1 <- renderText(paste0("Question N°",r))
  
  output$image1<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image2<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image3<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image4<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image5<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  
  
    observeEvent(input$btnQues1,
                 output$quest<- renderUI(tags$h3(dataTest$Question[input$valeurIndex],align="center"))
                 )
    
    observeEvent(input$btnQues1,
                 output$rep1<- renderUI(tags$h5("Réponse 1 : ",dataTest$RepA[input$valeurIndex]))
                 )
    
    observeEvent(input$btnQues1,
                 output$rep2<- renderUI(tags$h5("Réponse 2 : ",dataTest$RepB[input$valeurIndex]))
                 )
    
    observeEvent(input$btnQues1,
                 output$rep3<- renderUI(tags$h5("Réponse 3 : ",dataTest$RepC[input$valeurIndex]))
                 )
    
    observeEvent(input$btnQues1,
                 output$rep4<- renderUI(tags$h5("Réponse 4 : ",dataTest$RepD[input$valeurIndex]))
                 )
    
    
    
  
    observeEvent(input$btnRep1,
                 output$txtRep1 <- renderText(dataTest[input$valeurIndex,isolate(input$repUser+5)])
                 )
  
    observeEvent(input$btnRep1,
               
                 if(dataTest[input$valeurIndex,isolate(input$repUser+5)]=="FAUX")
                   output$image1<- renderUI(img(src = '200px-Red_Dot.svg.png', height = '20px', width = '20px'))
                 else
                   output$image1<- renderUI(img(src = '200px-Green_Dot.svg.png', height = '20px', width = '20px'))
                 )
    
    observeEvent(input$btnRep1,
                 updateNumericInput(numericInput("valeurIndex",
                                                 "Numéro de l'index : ",
                                                 value = input$valeurIndex+1,
                                                 min = 1,
                                                 max = 5,
                                                 step = 1
                                                 )
                                    )
                 )
    
    
}