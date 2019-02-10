# Coursera Data Science Capstone Project 
# Word Predict Shiny App
# lz
# 2/2/2019

library(shiny)
library(shinythemes)

shinyUI(
    navbarPage('Next Word Prediction', theme = shinytheme('cerulean'),

    ## Prediction tab
        tabPanel('Word Predictor',
            fluidRow(
                column(8, align = 'center', offset = 2,
                       textInput('rawtext', label = h3('Please enter your phrase below:'), 
                                 width = 400),
                       h6('- Please allow a few seconds for loading data if you just open this page.',
                          style = 'color:DimGray'),
                       h6('- Only English words are supported at this point.', 
                          style = 'color:DimGray'),
                       tags$hr(),
                       
                       h3('Next word prediction:'),
                       h3(textOutput('nextWord'), style = 'color:DodgerBlue'),
                       tags$hr()
                )
            )
        ),

    ## About tab
        tabPanel('About This Application',
            fluidRow(
                column(2),
                column(8,includeMarkdown('./about.md'))
            )
        ),
    
    # footer
    tags$hr(),
    tags$footer(style = 'color:grey', align = 'center', 
                ('2019 - zl'), 
                br(),
                (' Built with R and Shiny.')
        )
    )
)
