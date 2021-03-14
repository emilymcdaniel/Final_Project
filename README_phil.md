## Raw Econmic Data
# Sources
Historical unemployement - bureau of labor statistics
Inflation (Urban CPI) - bureau of labor statistics
Equity Indices: S&P, Dow Jones: yahoo finance 
Home Buyers' Index : fhfa.gov - federal housing finance agency
University of Michigan Consumer Sentiment: FRED (federal reserve economic data)

## Issues with the data
- Some is quarterly, some monthly
- History goes back for different time periods
- Some in excel charts in 2 dimensions, some as csv lists...
- cpi needs to be turned into inflation numbers (divide by period)

## data manipulation
- review with the group, decide on scope, time period, adequacy
- bring data into consistent formats: dataframe of monthly dates, rows for each      data  element
- genre data: this had movies released by month, total gross shown in month of issue
- used Excel pivot-table to show sum of gross by genre, by issue month
- to smooth data, took moving average of the data over a rolling 12 month period. (i.e. movie does not realize its full gross in month of release). then coverted $ numbers into percent of monthly total by genre
- combined this with economic data dataframe, normalized econonomic data beofre applying machine learning

## machine models
- the "X" for each modoel applied was the dataframe of exonomic data. Created model for each genre; looped through genres, used each as the "y" (dependent variable)
- tried linear regression (least squares) and decision_tree models. 
- for linear regression, did not split data into training and test sets; which only 5 factors to apply to the economic conditions, I was not concerned about overfitting. Calculated the r-squared coefficient for the model, plotted the fitted y vs. the actual y data
- for the DecisionTree model, used the sklearn utility to create training and test sets, then graphed the predicted and actual y test values