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

The genre dataset is the comprehensive list of New York Times Bestsellers, available through json.  

### Data Issues & Resolutions
1) Date formats are reported by quarter, month or day; additionally, some are listed as beginning of the month, others at the end. ***Dates were standardized to end-of-month formats.***
2) Length of data history extends for differing time periods. A cutoff that renders results from all genre and economic data needs to be determined as the starting timepoint.
***Data start date = 1/1/2020.*** 
3) Some data was retrieved in 2-dimensional excel charts, others as csv lists. Data needs to be moved into a single filetype.
***An Excel pivot-table was used to show sum of gross by genre by issue month to conform 2-dimensional excel charts to csv lists.***
4) Total gross for genres is given in the month of issue, and is not reflected per month. This will need to be converted to align in with other data reporting timeframes.
***A moving average of the data over a rolling 12 month period for movie data was calculated, then currency was converted into percent of monthly total by genre.
Figures within each datatype were also be normalized (ranges and volumes vary). Genre data was combined with the economic data dataframe before applying machine learning.***

-----

## Machine Learning Model
Using the bestseller-sample dataset as the initial input data, this project aims to determine if the economic changes affect the genre(s) of consumed media. Using the variables price, year, and UMCSEMT (University of Michigan Consumer Sentiment), the ML model objective is to predict the book's genre, fiction or non-fiction. Since we are using an input (features) to predict an output (genre media) and interpretability and accuracy are important, the Machine Learning Model selected is a Supervised Random Forest Model.

- Balanced accuracy score: 0.6231
- Precision score: non-fiction 0.68, fiction 0.55
- Recall score: non-fiction 0.66, fiction 0.57

![image_name](https://github.com/emilymcdaniel/Final_Project/blob/Maria-Gabriela/20.1.6-Results.png?raw=true)

1) The "X" for each modoel applied was the dataframe of exonomic data. Created model for each genre; looped through genres, used each as the "y" (dependent variable)
2) tried linear regression (least squares) and decision_tree models.
3) for linear regression, did not split data into training and test sets; which only 5 factors to apply to the economic conditions, I was not concerned about overfitting. Calculated the r-squared coefficient for the model, plotted the fitted y vs. the actual y data
4) for the DecisionTree model, used the sklearn utility to create training and test sets, then graphed the predicted and actual y test values

-----

## Presentation Materials

Slides

-----

## Team Notes

### Team Members

Emily McDaniel | Maria-Gabriela Ordaz | Phil Schechter | Matt Stadler


### Communication Protocols
Expectations, Meetings, Deadlines

**Tuesday:**
Attend class AND
- Review evaluation from prior week.
- Begin the week's objectives.
- Have a plan for actions to be done by Thursday's class.

**Thursday:**
Attend class AND
- Share new results.
- Make as much progress on the project during class as possible.
- Be prepared to "present" progress to TAs/Dave.
- Create action plan with deadlines.

**Saturday:**
Meet by Zoom AND
- Review our work.
- Provide feedback.
- If needed, communicate what remaining actions are needed and who can assist.

**Communications Style:**
We intend to attend all classes, communicate via group Slack between classes, and jointly decide by Sunday noon to submit the weekly assignment.
