CREATE DATABASE EMPLOYEE_TURNOVER;
USE EMPLOYEE_TURNOVER;

CREATE TABLE employee_turnover (
	stag CHAR(50),
	event INT,
	gender CHAR (50),
	age INT,
	industry CHAR (50),
	profession CHAR (50),
	traffic CHAR (50),
	coach CHAR (50),
	head_gender CHAR (50),
	greywage CHAR (50),
	way CHAR(50),
	extraversion DECIMAL(5,2),
    independ DECIMAL(5,2),
    selfcontrol DECIMAL(5,2),
    anxiety DECIMAL(5,2),
    novator DECIMAL(5,2)
);

-- load the database into the table created above

select * from employee_turnover;

-- count number of rows
SELECT COUNT(*) AS rows_num FROM employee_turnover;

-- checking distinch values of all the columns to check for missing values
SELECT distinct gender from employee_turnover;
SELECT distinct age from employee_turnover;
SELECT distinct industry from employee_turnover;
SELECT distinct profession from employee_turnover;
SELECT distinct traffic from employee_turnover;
SELECT distinct coach from employee_turnover;
SELECT distinct head_gender from employee_turnover;
SELECT distinct greywage from employee_turnover;
SELECT distinct way from employee_turnover;
SELECT distinct extraversion from employee_turnover;
SELECT distinct independ from employee_turnover;
SELECT distinct selfcontrol from employee_turnover;
SELECT distinct anxiety from employee_turnover;
SELECT distinct novator from employee_turnover;


-- ANALYSIS --

-- percentage of people that resigned and did not resign
select event, count(*), ROUND((COUNT(*) / (SELECT COUNT(*) FROM employee_turnover)) * 100, 1) AS pct
FROM employee_turnover GROUP BY 1 ORDER BY 3 DESC;

-- number and percentage of turn overs per industry
select industry,sum(event) as no_of_turnovers, 
ROUND((sum(event) /(SELECT COUNT(*) FROM employee_turnover)) * 100, 1) 
AS turnover_percentage
from employee_turnover group by 1 order by 3 desc;

-- number and percentage of turn overs per profession
select profession,sum(event) as no_of_turnovers, 
ROUND((sum(event) / (SELECT COUNT(event) FROM employee_turnover)) * 100, 1) AS turnover_percentage 
from employee_turnover
group by 1 order by 3 desc;

-- number and percentage of people per profession
SELECT profession, count(*), ROUND((COUNT(*) / (SELECT COUNT(*) FROM employee_turnover)) * 100, 1) AS pct
FROM employee_turnover GROUP BY 1 ORDER BY 3 DESC;

-- anxiety levels per industry
SELECT industry, ROUND(AVG(anxiety),2) AS avg_anxiety_levels
FROM employee_turnover GROUP BY 1 ORDER BY 2 DESC;

-- anxiety levels per profession
SELECT profession, ROUND(AVG(anxiety),2) AS avg_anxiety_levels
FROM employee_turnover GROUP BY 1 ORDER BY 2 DESC;

-- average age per industry
SELECT industry, avg(age) from employee_turnover group by industry;

-- mode of travel and its relation with age and anxiety levels
select way, avg(age), avg(anxiety) from employee_turnover
group by way order by 2 desc;
