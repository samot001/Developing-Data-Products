
library(shiny)
data(JohnsonJohnson)
# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(
    
    #  
    titlePanel("Lake Huron 1875–1972"
    ),
    p("Annual measurements of the level, in feet, of Lake Huron from 1875–1972. The goal of this app is to calculate the 
      average height of Lake Huron during different time periods."),
    p("On the left site the different start and end date of the period can be chosen. On the right site the plot shows
      the development of the height during the chosen period. Whereby the red line shows the average height during this time."),
    p("Below the plot the corresponding numeric value of the average height is shown."),
    br(),
    #sidebarLayout(
     # p("blubbb"),
      #mainPanel()
    #),
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
      ))
    
    
    ))
