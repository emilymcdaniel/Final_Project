# Intersection of Economic Change & Media Genre Selection
Do economic changes affect the genre(s) of media that are consumed?
-----

As economic change occurs, what genres of media do we choose? When you're financially stressed, do you maintain the same habits in your media selections? Or do you lean on self-help, finance, or comedy media? 

We hypothesize that: **Economic change DOES impact the genre of medias consumed**

-----
## Project Design 

### Preliminary questions: 
- How can "economic change" be defined? Are some indicators better than others? 
- What types of media should be considered? Can different types of media be viewed in aggregate, or should they be individually weighted?
- What data sources will be useful?
- How can this question be computationally answered?

### Why is this topic relevant?
This question evaluates consumer preferences against the state of the economy. This type of exercise is valuable for marketing strategies for any industry, and is a worthwhile analysis to time product releases. 

We selected this topic because it intersects several areas of interest among our group members, including e-commerce, finance, and reading.

Our planned approach can be viewed in this [Flowchart](https://github.com/emilymcdaniel/Final_Project/blob/main/Final%20Project_Flow%20Chart.pdf).

-----

## Database

### Economic & Genre Datasets
To measure economic changes, the Consumer Price Index, Dow Jones Index history, S&P 500 history, Unemployment rates, Home Buyer Index, University of Michigan: Consumer Sentiment (UMCSENT) were pulled from the Bureau of Labor Statistics, Yahoo! Finance, Federal Housing Finance Agency, and the Federal Reserve Economic Data, respectively. Each was available in .xls, .xlsx, .csv, .txt formats, and can be stored locally.

The genre dataset was extracted from https://www.the-numbers.com/, available through csv. This is an Action, Adventure, Comedy, Drama, Horror, and Thriller movies dataset from 2006-2020 with box office results.

### Data Issues & Resolutions
1) Date formats are reported by quarter, month or day; additionally, some are listed as beginning of the month, others at the end. ***Dates were standardized to end-of-month formats, shown as YYYYMM.***
2) Length of data history extends for differing time periods. A cutoff that renders results from all genre and economic data needs to be determined as the starting timepoint.
***Data start date = Jan2006; end date = Dec2020.*** 
3) Some data was retrieved in 2-dimensional excel charts, others as csv lists. Data needs to be moved into a single filetype.
***An Excel pivot-table was used to show sum of gross by genre by issue month to conform 2-dimensional excel charts to csv lists.***
4) Total gross for genres is given in the month of issue, and is not reflected per month. This will need to be converted to align in with other data reporting timeframes.
***A moving average of the data over a rolling 12 month period for movie data was calculated, then currency was converted into percent of monthly total by genre.
Figures within each datatype were also be normalized (ranges and volumes vary). Genre data was combined with the economic data dataframe before applying machine learning.***
5) Available data was in different ranges. ***Must be converted prior to machine learning application.***

**ECONOMIC DATA NOISE**
![Economic Data Noise Illustrated](https://github.com/emilymcdaniel/Final_Project/blob/main/Visuals/Economic%20indeces%20spread.PNG?raw=true)


-----

## Machine Learning Model
Since we are using an input (economic features) to predict an output (genre media) and interpretability and accuracy are important, the Machine Learning Model selected is a **Supervised Random Forest Model**.

1) The "X" for each model applied was the economic dataframe. A model was created looping through each genre, using each as the "y" (dependent variable).
2) Linear regression (least squares) model attempt: We did not split data into training and test sets, as only 5 factors to apply to the economic conditions. Overfitting was not a concern. Calculated the r-squared coefficient for the model, plotted the fitted "y" vs. the actual y data
3) Decision tree model: We used the Scikit-learn to create training and test sets, then graphed the predicted and actual y test values

Test the [Modeling Code](https://github.com/emilymcdaniel/Final_Project/blob/main/Machine%20Learning%20Model%20Final.ipynb).
View the [Resulting Datafile (.csv)](https://github.com/emilymcdaniel/Final_Project/blob/main/Database/medianeconomics_df.csv).

**LINEAR REGRESSION**
![Linear Regression](https://github.com/emilymcdaniel/Final_Project/blob/main/Visuals/Linear%20Regression%20modeling.PNG?raw=true)

**DECISION TREE (preferred)**
![Decision Tree](https://github.com/emilymcdaniel/Final_Project/blob/main/Visuals/Decision%20Tree%20modeling.PNG?raw=true)

**CORRELATION SQUARES**

![Economic Feature Correlation](https://github.com/emilymcdaniel/Final_Project/blob/main/Visuals/Correlation%20Square.png?raw=true)

![Genre/Economic Feature Correlation](https://github.com/emilymcdaniel/Final_Project/blob/main/Visuals/Correlation%20Square%20-%20Ec%20Genre.PNG?raw=true)

-----

## Presentation Materials

Our presentation will be delivered as a [Powerpoint](https://github.com/emilymcdaniel/Final_Project/blob/main/BootCamp_FinalPres_v3.pptx?raw=true).

-----

## Dashboard

Our data can be visualized in this [Tableau Story](https://public.tableau.com/views/VisualizingtheEconomy-MovieGenrerelationship/Theeconomysimpactonmoviegenreinterest?:language=en&:display_count=y&publish=yes&:origin=viz_share_link).

-----

**Team Members:** Emily McDaniel | Maria-Gabriela Ordaz | Phil Schechter | Matt Stadler
