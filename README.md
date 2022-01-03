# Pewlett-Hackard-Analysis
Using SQL to analyze employee data for a company
## Analysis:

## Overview of the analysis:

The purpose of the analysis is to determine how many employees at Pewlett Hackard will retire and if the company will be able to mentor enough employees prior.

## Results:

### Deliverable 1:
    
1. 1.The first SQL query was joining the employee and titles table to determine which employees and their respective titles were born between 01/01/1952 and 12/31/1955.This query resulted in duplicate titles for some employees.
2. The next query resulted in eliminated the duplicate employee titles into a new table with unique titles. This resulted in many senior staff, senior engineers, engineers appearing on the list of employees projected to retire. 
3. The total number of employees according to title are as follows:
        **Senior Engineer = 29,414**
        **Senior Staff = 28,254**
        **Engineer = 14,222**
        **Staff = 12,243**
        **Technique Leader= 4,502**
        **Assistant Engineer = 1761**
        **Manager = 2**
4. These numbers reveal that Pewlett Hackard will have a great number of high level employees retiring leaving a gap in leadership. 

### Deliverable 2:

1. The next SQL query was to determine which employees are available to provide mentorship. The employees born between 01/01/1965 and 12/31/1965 are eligible to provide mentorship.
2. The results yielded **1,549** employees eligible to provide mentorship.
3. Although the number of retiring employees exceededs the number of possible mentors, mentors can provide mentorship to more than one employee at the same time. 
4.

## Summary:


1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?
There are a total of **300,024** employees at Pewlett Hackard.
There are a total of **90,398** employees about to retire.

2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
There are a total of **1,549** employees who are ready to enter into a mentorship program

**There are not enough retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees.**