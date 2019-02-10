### Coursera Data Science Capstone Project
### Next Word Prediction Application 

***** 

#### Project Overview 

- The goal of the project is to create a Shiny application that takes a phrase or words as input, then provides a prediciton for next word that users would be most likely to enter. The prediction functionality could help users speed typing.

- In order to complete the project, there are several steps including data cleaning, exploratory analysis, prediction modeling, Shiny app building, performance optimizing, and slide deck creating.  

- The prediction model is built on 3 English text files provided in the course material. Therefore, the prediction is only available for English phrase. 

- Accuracy and efficiency are the main factors to be considered when evaluating the final product. 

*****

#### Data Process and Prediction Model 

- The original dataset includes a large number of text from blogs, news, and twitter. Data process includes convert to lower case, remove numbers, punctuations, non English characters, links.  

- Then the data was tokenized, aggregated, and stored as n-grams (n = 2,3,4) tables with the corresponding frequency. 

- The model uses a backoff method to provide prediction. The model will search the matching input in the 4-gram table, choose the one with the highest frequency, and return the prediction word. If there is no match, it will backoff and search the 3-gram table. If no match again, it will backoff again to search 2-gram table. If still no match, "No prediction" will be presented. 

***** 


#### Instructions 

The user interface include 2 parts. The upper part is the input box for user to enter text, and the bottom part is the prediction that app provides based on the input text To use the app:

1. Enter words or phrase into the input box.
2. The prediction will be provided without further action.

If user just opens the page, it takes a few seconds to load data. As long as the prediction part shows "No prediction..." in blue, the app is ready to work. 

***** 

#### Links 

- The prediction app is currently hosted on: https://lz2323.shinyapps.io/wordpredict/ 

- The slide deck can be found on: http://rpubs.com/lz2323/wordpredict 

- The scripts and data of the Shiny app can be found on the following GitHub repository: https://github.com/lz2323/wordpredict


