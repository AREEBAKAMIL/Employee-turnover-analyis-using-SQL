# Employee-turnover-analysis-SQL
This repository demonstrates basic analysis of the Employee Turnover dataset using SQL and visualizations using Google Looker Studio. 

# About the dataset
The Employee Turnover dataset is a real dataset taken from [Edward Babushkin's blog](https://edwvb.blogspot.com/2017/10/employee-turnover-how-to-predict-individual-risks-of-quitting.html). The dataset contains data about Employee's risk of quitting based on various factors.
Columns:
"stag" - experience; 
"event" - event;      
"gender"       
"age"          
"industry"     
"profession"  
"traffic" - From what pipelene candidate came to the company;
"coach" - presence of a coach on probation;
"head_gender" 
"greywage" -  The salary does not seem to the tax authorities;
"way" -   how an employee gets to workplace (by feet, by bus etc);  
"extraversion", "independ", "selfcontrol", "anxiety", "novator" - Big5 test scales.

# Steps:
1. Download the csv file.
2. Import the file to MySQL (you can use an SQL GUI such as [MySQL Workbench](https://www.mysql.com/products/workbench/))
3. Check distinct values to look for any null values
4. Perform anaysis using SQL
5. Visualize it using using Google Looker Studio
   
Link to the analysis: https://lookerstudio.google.com/reporting/07183227-88d3-46e9-a58f-6ca1b9b5ea4e

