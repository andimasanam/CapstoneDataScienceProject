library(shiny)
library(shinyIncubator)

# Define UI for application
shinyUI(fluidPage(

  # Application title
  titlePanel("Word Prediction"),
  helpText("This application will predict the next highly probable word in a phrase. The application can predict the word with highest probability of occuring next."),

  # Sidebar 
  sidebarLayout(
    sidebarPanel(      
      helpText("Enter the phrase or sentence or word for which you want to predict the next word. Click the button below to Predict."),
      
      textInput("sPhrase", "Phrase/Sentence/Word", "policies that are"),           
      br(),   
      actionButton("predict", "Predict Next Word"),      
      br()   
    )
    ,

    # Main panel
    mainPanel(
      progressInit(),
      h3("Model Output"),
      br(),
      br(),
      verbatimTextOutput("result")      
    )
  )
))
