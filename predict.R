# Coursera Data Science Capstone Project 
# Word Predict Shiny App
# lz
# 2/2/2019

#cleanfunction
inputclean <- function(inputtext) {
    inputtext <- char_tolower(inputtext)
    tk <- tokens(inputtext, remove_numbers = T, remove_punct = T, remove_symbols = T,
                 remove_twitter = T, remove_url = T)
    unlist(tk)
}

#searchfunction
searchfun <- function(cleantext, bigram, trigram, quadgram) {
    n <- length(cleantext)
    k <- n
    if (k>=3) {
        text1 <- paste0(cleantext[(n-2):n], collapse = ' ')
        searchtext <- paste0("^", text1, "$")
        searchresult <- quadgram[grepl(searchtext, quadgram$prevwords),]
        
        if (nrow(searchresult) == 1) predictword <- searchresult$lastword
        else k <- 2
    } 
    
    if (k==2) {
        text1 <- paste0(cleantext[(n-1):n], collapse = ' ')
        searchtext <- paste0("^", text1, "$")
        searchresult <- trigram[grepl(searchtext, trigram$prevwords),]
        
        if (nrow(searchresult) == 1) predictword <- searchresult$lastword
        else k <- 1
    }
    
    if (k==1) {
        searchtext <- paste0("^", cleantext[n], "$")
        searchresult <- bigram[grepl(searchtext, bigram$prevwords),]
        
        if (nrow(searchresult) == 1) predictword <- searchresult$lastword
        else predictword <- NA
    } 
    
    if (k==0) predictword <- NA
    
    if (is.na(predictword)) predictword <- 'No prediction...'
    predictword
}
