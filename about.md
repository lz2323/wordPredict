### Coursera Data Science Capstone Project
### Next Word Prediction Application 

***** 

#### Project Overview 

- The goal of the project is to create a Shiny application that takes a phrase or words as input, then provides a prediciton for next word that users would be most likely to enter. The prediction functionality could help users speed typing.

- In order to complete the project, there are several steps including data cleaning, exploratory analysis, prediction modeling, Shiny app building, performance optimizing, and slide deck creating.  

- The prediction model is built on 3 English text files provided in the course material. Therefore, the prediction is only available for English phrase. 

- Accuracy and efficiency are the main factors to be considered when evaluating the final product. 

*****

#### How the App Works 

-  The original data was converted to lower case, remove numbers, punctuations, non English characters, links. Then the data was tokenized, aggregated, and stored as n-grams (n = 1,2,3,4) tables with the corresponding frequency. 

- The model uses a backoff method to provide prediction:
    1. The model will first match the last 3 words of user's input to the 4-gram table,  and return the last word of the matched 4-gram with the highest frequency as prediction. 
    2. If there is no match or the input text is less than 3 words, it will backoff and do the similar process in 3-gram table. Then similar process in 2-gram. 
    3. If still no match, the word with highest frequency will be returned as prediction.

***** 


#### How to Use 

- The user interface include 2 parts. The upper part is the input box for user to enter text, and the bottom part is the prediction that app provides based on the input text.

- To use the app:
    1. Enter words or phrase into the input box.
    2. The prediction will be provided without further action.  
    <br>
- If user just opens the page, it takes a few seconds to load data. As long as the prediction part shows "No Input..." in blue, the app is ready to work.

***** 

#### Links 

- The prediction app is currently hosted on: https://lz2323.shinyapps.io/wordpredict/ 

- The slide deck can be found on: http://rpubs.com/lz2323/wordpredict 

- The scripts and data of the Shiny app can be found on the following GitHub repository: https://github.com/lz2323/wordpredict


