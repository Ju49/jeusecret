library(shiny)

server <- function(input, output,session){
  
  r <- 0
  
  output$quest<- renderUI(tags$h5(" "))
  output$rep1<- renderUI(tags$h5("Réponse 1 : "))
  output$rep2<- renderUI(tags$h5("Réponse 2 : "))
  output$rep3<- renderUI(tags$h5("Réponse 3 : "))
  output$rep4<- renderUI(tags$h5("Réponse 4 : "))
  
  output$image1<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image2<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image3<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image4<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image5<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  
  observeEvent(input$btnQues1,
               
               output$quest<- renderUI(tags$h3(dataTest$Question[r+1],align="center")),
               output$rep1<- renderUI(tags$h5("Réponse 1 : ",dataTest$RepA[r+1])),
               output$rep2<- renderUI(tags$h5("Réponse 2 : ",dataTest$RepB[r+1])),
               output$rep3<- renderUI(tags$h5("Réponse 3 : ",dataTest$RepC[r+1])),
               output$rep4<- renderUI(tags$h5("Réponse 4 : ",dataTest$RepD[r+1]))
  )
  
  observeEvent(input$btnRep1,
               output$txtRep1 <- renderText(dataTest[r+1,isolate(input$repUser+5)])
  )
  
  observeEvent(input$btnRep1,
               
               if(dataTest[r+1,isolate(input$repUser+5)]=="FAUX")
                 output$image1<- renderUI(img(src = '200px-Red_Dot.svg.png', height = '20px', width = '20px'))
               else
                 output$image1<- renderUI(img(src = '200px-Green_Dot.svg.png', height = '20px', width = '20px')),
  )
}