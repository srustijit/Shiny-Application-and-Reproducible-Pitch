#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application 
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Square Application"),
  
  # Sidebar with a slider input for number 
  sidebarLayout(
    sidebarPanel(
      h1("Move the slider"),
       sliderInput("inputnumber",
                   "The Input Number",
                   min = 1,
                   max = 100,
                   value = 25)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h3("Squared Value"),
       textOutput("outputnumber")
    )
  )
))
