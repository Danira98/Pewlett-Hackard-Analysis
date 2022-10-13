# ***Pewlett Hackard Analysis***

## Overview of Project

### Overview:

The company Pewlett Hackard reached out to us to help them locate the amount of employees that are about to retire to offer them a retirement package, as well as locate the departments that will need positions to be filled in the near future. We are facilitated multiple csv files that contain information for each department, as well as individual information of employess. It is our job to create new tables merging the information given to fastrack our findings, create new tables that contain only the employees that are reaching retirment in the near future, and all the employees's information including department, employee number, dates and their title in the company. We are instructed to use both PostgreSQL and pgAdmin to achieve these goals.

### Purpose:

In this assignment, we are instructed to return the number of retiring employees per title in each department, specificallly employees that have the birthdays between January 1,1952 and December 31,1955. Also, we are expected to identify the employees that are elegible to participate in a mentorship program with the criteria being their birthdays fall within the year of 1965. To expedite the report, we are using SQL to return the tables that hold our desired results.

## Results:

After filtering our data to find the employees that meet our retirement criteria, and cleaning our data so that we count only the most recent title each employee holds, we found that a total of *72,458* employees meet our criteria. The following table showcases the total amount of employees for each title:

![retiring_titles_png](https://user-images.githubusercontent.com/111034667/195475341-372eae81-80d0-4077-b1ca-334f4015eca2.png)

From the table above, we can note the following:

- The title that holds the most amount of employees is Senior Engineer, with the total being *25,916*.Overall the Senior titles are the majority of the retirement population within this company. 
- The titles that contain the lower amount of employees on track to retirement are Manager, with the total being *2*, followed by Assistant Engineer.

From the table [mentorship_eligibility.csv](https://github.com/Danira98/Pewlett-Hackard-Analysis/files/9769913/mentorship_eligibility.csv), where we list the total amount of employees that meet the criteria to participate in the mentorship program, we can observe the following:

- Out of the *1,049* employees that meet the criteria for the mentorship program, the two tiles that most likely contain the largest amount of employees that could participate in the program are Senior Staff and Senior Engineer.
- The titles that will face more challenges to find mentors for the next generation will be Manager, followed closely by Assistant Engineer.


## Summary:

The company Pewlett Hackard will have a large amount of employees retiring within the next few years. This means that the same amount of employees will need to be hire to fufill these empty possitions, though not all positions will need to be filled within the same year. It will be ideal to do additional research to find the amount of positions that will need to be filled within each year based on the employees birth year between the years of 1952 and 1955.

Additionally, based on the year the criteria of the mentorship program is based on, most likely there will be some titles that will have a lower probability of finding mentors or not having any employees that meet the criteria. It would be in the company's best interest to do additional research to count how many employees of each title meet the criteria for the mentorship program. In the case where the are slim to none available employees within a title to participate in the program, they can discuss wether they will need to modify the criteria or perhaps hire more employees within that role so that future generations have a higher chance of obtaining a mentors within their role.



