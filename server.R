library(shiny)
data(LakeHuron)
shinyServer(
  function(input, output) {
    output$plot1 <- renderPlot({
      ## Render a line chart
      lake = ts(LakeHuron,start=c(input$id1,1), end=c(input$id2,1))
      plot(lake, main = "Annual measurements of the level, in feet, of Lake Huron during chosen period", xlab = "Time", ylab = "Height")
      meanVal <- mean(lake)
      abline(h=meanVal, col = "red")
      output$meanVal <- renderPrint(meanVal)
    })
  }
)