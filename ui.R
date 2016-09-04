#
# This is the user-interface, Shiny web application. It builds the Panel of
# input selection box and output plot for the MTCars dataset.
# 

library(shiny)

# Define UI for application that draws a scatterplot
shinyUI(fluidPage(

  # Application title
  titlePanel("MPG vs Weight, per # of Cylinders"),

  # Show selection box and scatterplot 
  mainPanel(
      h4("We wish to examine MPG versus weight of a vehicle, broken down by number of cylinders."),
      selectInput("cyl", label = "Please select the number of cylinders",
                  choices = c(4, 6, 8), selected = 4),
      plotOutput("MPGPlot"),
      h4("We have fit a linear regression model to the data."),
      h4("As you can see, MPG decreases with weight in every cylinder class."))
))
