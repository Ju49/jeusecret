library(shiny)

server <- function(input, output,session){
  
  output$image1<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image2<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image3<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image4<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
  output$image5<- renderUI(img(src = 'Location_dot_grey.svg.png', height = '20px', width = '20px'))
    
  observeEvent(input$btnRep1,
               output$txtRep1 <- renderText(dataRes[r,isolate(input$repUser+1)])
               )
  
  observeEvent(input$btnRep1,
                 
                 if(dataRes[r,isolate(input$repUser+1)]=="FAUX")
                   output$image1<- renderUI(img(src = '200px-Red_Dot.svg.png', height = '20px', width = '20px'))
                 else
                   output$image1<- renderUI(img(src = '200px-Green_Dot.svg.png', height = '20px', width = '20px'))

               )
  
}