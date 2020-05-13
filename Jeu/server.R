library(shiny)

server <- function(input, output,session){
  
  observeEvent(input$btnRep1,
                output$txtRep1 <- renderText({
                  paste0(dataRes[r,input$repUser])})
                  #paste0(input$repUser)}) #MARCHE
                  #paste0(r)}) #MARCHE
                  
               )
}
               
  




