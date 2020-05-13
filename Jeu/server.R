library(shiny)

server <- function(input, output,session){
  
  observeEvent(input$btnRep1,
                 output$txtRep1 <- renderText(dataRes[,r])
                )
  
  
  
 
}
               
  




