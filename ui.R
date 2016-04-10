
library(shiny)
data(JohnsonJohnson)
# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(
    
    # Give the page a title
    titlePanel("Annual measurements of the level, in feet, of Lake Huron 1875–1972."),
    
    # Generate a row with a sidebar
    sidebarLayout(
      
      # Define the sidebar with one input
      sidebarPanel(
        numericInput("id1", "Choose Start year: ",1875,min = 1875,max= 1972,step= 1),
        numericInput("id2", "Choose End year: ",1972,min = 1875,max= 1972,step= 1),
        hr()
    ),
      # Create a spot for the barplot
      mainPanel(
        plotOutput("plot1"),
        h4("Mean height of Lake Huron during selected period"),
        verbatimTextOutput("meanVal")
      ))))
