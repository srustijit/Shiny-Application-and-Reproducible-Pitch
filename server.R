#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to find the square of a number
shinyServer(function(input, output) {
   
  output$outputnumber=renderText(calculateSquare())
  
  calculateSquare<- reactive(
    {
      input$inputnumber*input$inputnumber
    }
  )
  
})


