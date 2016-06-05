library(shiny)
library(wordcloud)

shinyUI(fluidPage(
        titlePanel(
                h1("Coursera Capstone Next Word Prediction Project")
        ),
        fluidRow(
                column(4,
                       wellPanel(
                                h5("Type a sentence fragment of any length 
                                and the app will predict the next word in that fragment. The application  
                                create a word cloud of the possible alternatives to that word, up to 
                                a maximum selectable number."),
                                h5("An example fragment has been provided for demonstration purposes."),
                                h5("Please note that this app only supports inputs in English."),
                                br(),
                                textInput("entry",
                                        "Input sentence fragment:", "This is a"
                                         ),
                                br(),
                                sliderInput("numSuggestions", "Select max. suggestions for word cloud", 1, 50, value = 10),
                                submitButton("Predict"),
                                br()
                       )
                ),

                column(4,
                        h3('Results of prediction'),
                        br(),
                        h4('You entered the following text:'),
                        wellPanel(h4(textOutput("inputted")), style = "color:purple"),
                        br(),
                        h4('The best prediction for the next word is:'),
                        wellPanel(h4(textOutput("prediction1")), style = "color:brown")
                ),
  
                column(4,
                       h3('Word Cloud'),
                       h4("Here's a simple wordcloud of predicted words:"),
                       plotOutput("plot")
                )
        )
        )
)
