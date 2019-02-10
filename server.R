# Coursera Data Science Capstone Project 
# Word Predict Shiny App
# lz
# 2/2/2019

library(shiny)
library(data.table)
library(quanteda)
library(markdown)

d2 <- readRDS('./data/2uniqueASC.rds')
d3 <- readRDS('./data/3uniqueASC.nonum.rds')
d4 <- readRDS('./data/4uniqueASC.nonum.rds')
source('./predict.R')

shinyServer(function(input, output) {
    prediction <- reactive({
        cleantext <- inputclean(input$rawtext)
        searchfun(cleantext, d2, d3, d4)
    })

    output$nextWord <- renderText(prediction())
})
