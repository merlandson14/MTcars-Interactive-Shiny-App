#
# This is the server logic of a Shiny web application. It runs the data calculations
# based on the input selection from the ui.R interface and returns the output plot.
# This one is for the MTCars dataset and is comparing MPG to WT via CYL.
#

library(shiny)
data(mtcars)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$MPGPlot <- renderPlot({
    
    # select data based on input$cyl from ui.R
    yMPG <- mtcars[mtcars$cyl == input$cyl,]$mpg 
    xWT <- mtcars[mtcars$cyl == input$cyl,]$wt
    
    # draw scatterplot of MPG vs WT; include linear regression model
    plot(x = xWT, y = yMPG, pch = 19, col = "red", xlab = "Weight in 1000 lbs", ylab = "MPG")
    abline(lm(yMPG ~ xWT))
  })
  
})
