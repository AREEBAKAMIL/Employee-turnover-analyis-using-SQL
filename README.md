# Employee-turnover-analysis-SQL
This repository demonstrates basic analysis of the Employee Turnover dataset using SQL and visualizations using Google Looker Studio. 
Link to the analysis: https://lookerstudio.google.com/reporting/07183227-88d3-46e9-a58f-6ca1b9b5ea4e

# About the dataset
The Employee Turnover dataset is a real dataset taken from [Edward Babushkin's blog](https://edwvb.blogspot.com/2017/10/employee-turnover-how-to-predict-individual-risks-of-quitting.html). The dataset contains data about Employee's risk of quitting based on various factors. <br />

Columns: <br />
"stag" - experience <br />
"event" - event      
"gender"       
"age"          
"industry"     
"profession"  
"traffic" - From what pipelene candidate came to the company <br />
"coach" - presence of a coach on probation <br />
"head_gender" - Gender of the head
"greywage" -  The salary does not seem to the tax authorities <br />
"way" -   how an employee gets to workplace (by feet, by bus etc) <br />
"extraversion" - One of Big5 test scales <br />
"independ" - One of Big5 test scales <br />
"selfcontrol" - One of Big5 test scales <br />
"anxiety" - One of Big5 test scales <br />
"novator" - One of Big5 test scales <br />

# Steps:
1. Download the csv file.
2. Load the csv into pandas dataframe
3. Check for missing/null values
4. Encode categorical columns using Label-Encoding
5. Check for correlation using a heatmap
6. split the dataset into test and train
7. Train supervised ML models and compare results
8. perform another training of the model which had provided the highest accuracy

We can see that performing SQL analysis does not tell us much information about linkages between 'event' and the remaining variable. 
   

