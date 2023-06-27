# Portfolio-Project-
A. Bike analysis using Excel
   
Data set in Excel (converted from .csv file) contains 13 columns: ID, Marital Status, Gender, Income, Children, Education, Occupation, Home Owners, Cars, Commute Distance, Region, Age, Purchased Bike.
   
Data set has been cleaned; duplicates removed, values in Marital Status and Gender columns have been replaced with full names for clarity, age brackets have been created, the range in Commute Distance column has been adjusted.
Pivot table has been used to view the data and to run some simple calculations.
   
Then a dashboard has been created together with Pivot slicers to filter and present the data.
   
The dashboard shows average income per purchase, customer age bracket and customer commute distance according to marital status, region and education.

   

B. Cyclistic analysis using Excel
   
  
                                                                                        
Data Analyst: (Kasia) 
Client/Sponsor:  Cyclistic bike-share – How does a bike-share navigate speed success?

Purpose: 
About the company:

In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5824 bicycles that are geotracked and locked into a network of 692 station across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime. Cyclistic sets itself apart by also offering reclining bikes, hand tricycles and cargo bikes, making bike-share more inclusive to people with disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes, about 8% of riders use the assistive options. Cyclistic users are more likely to ride of leisure, but about 30% use them to commute to work each day.

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.
Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, the director of marketing believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, the director of marketing believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.

Why is this project happening?
This project is happening because the company wants to maximize the number of annual memberships. In order to maximize the number of annual memberships, which are much more profitable than casual riders, the marketing analyst team needs to better understand the following:
1.	How do annual members and casual riders use Ciclistic bikes differently?
2.	Why would casual riders buy Cyclistic annual memberships?
3.	How can Cyclistic use digital media to influence casual riders to become members?
What are the goals?
The goal is to design marketing strategies aimed at converting casual riders into annual members to ensure the future growth of the company by analyzing how annual members and casual riders use Cyclistic bikes differently.
The final deliverable will recommend three top recommendation supported by visualizations and key findings.

Scope / Major Project Activities:

Activity	Description
Identify the business task and consider key stakeholders	Define the problem I’m trying to solve and understand the stakeholders’ expectations, define and identify my audience and key stakeholders.
Prepare the data for analysis
	Download data, identify how it’s organized, sort and filter, determine its credibility
Process the data for analysis	Checking data for errors, choosing the tools, transforming  the data to be more effective, documenting the cleaning process

Create recommendations	Create recommendations 
Deliver final report	Deliver final report 

This project does not include:
●	This project does not involve the analysis of why casual riders would buy Cyclistic annual memberships
●	This project does not involve the analysis of how Cyclistic can use digital media to influence casual riders to become members



Deliverables:

Deliverable	Description/ Details
A clear statement of the business task	A business task statement to the executive team and the marketing director

A description of all data sources used	Sorting and filtering the data, determining the credibility of the data
Documentation of any cleaning or manipulation of data	Ensuring data’s integrity, verifying and cleaning the data


Schedule Overview / Major Milestones:

Milestone	Expected Completion Date	Description/Details
Statement of the business task	15.11.22	Deliver the statement to the stakeholders
Data preparation	16.11.22	Initial data preparation completed
Data processing 	17.11..22	Data cleaning and manipulation
Recommendation list	28.07.22	List of recommendations for each problem
Final report	30.07.22	Final report

*Estimated date for completion: 
22 November 2022

1.	Statement of the business task
Cyclistic company have got 2 types of customers: annual members and casual riders. Annual member are much more profitable than casual riders so maximizing the number of annual members will be key to future growth. The problem that this analysis is trying to solve is to understand how annual members and casual riders use Cyclistic bikes differently. 
Insights from this analysis will create a framework of marketing strategies aimed at converting casual riders into annual members.
This problem can be solved by analyzing the Cyclistic historical bike trip data to identify trends which will be used as a framework for a new marketing strategy.
To do the task, the previous 8 months of Cyclistic trip data will be used showing also the holiday months, which can differ from the rest of the months. 
In case of conducting additional research, qualitative data would help solving the problem with questions like ‘Under what circumstances would you choose a membership over a casual rides?’.
The audience for the presentation are the director of marketing, Cyclistic marketing analytics team and Cyclistic executive team.
The scope of the task is to answer the question of how annual members and casual riders use Cyclistic bike differently only.
The other two questions are considered out of scope.
The time frame for completion is one week- the task needs to be done by 22nd November 2022.
Access to the information will be given to the director of marketing and the marketing analytics team.



2.	Description of all data sources used
The data from the company’s resources has been downloaded onto my computer. A folder with two subfoldes has been created: one subfolder to house .xls files and the second subfolder to house .csv files to have a copy of the original data.
There are spreadsheet datasets containing previous 8 months of Cyclistic trip data. It is an internal data, which lives inside the company’s system. It is a structured data organized into rows and columns. 
The data is reliable and credible because it comes from the historical trip data and was collected by the company. It is original and comprehensive data, which will allow to answer the business question.
The data will be protected from unauthorized access or corruption by adopting safety measures. 
The data has been made available by Motivate International Inc. under the licence. To ensure data-privacy and security of the riders, their personally identifiable information are prohibited to use. 
The data is relevant and aligned with business objective because it allows tracking trends over a long period of time – 8 months including holiday months, which can differ from the rest of months.
There is some data showing the age and gender of the customers, which could be useful to determine the differences between the annual and casual riders divided into age and gender groups but there is only outdated data available from 2019, which could be used as proxy data. 
The confidentiality of the data will be maintained during the analysis.
To check the overall data integrity I did a quick analysis of the datasets. I checked the data format because calendar dates can be represented in a lots of different short formats. To ensure data integrity I used DMY date format. 
I also sorted the date by started_at columns (oldest to newest) to make is easier to understand, analyze and visualize.


3.	Data cleaning
Data set contain 8 files containing previous 8 months of Cyclistic trip data (from January to August).
Each file contains the following columns:
-	ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual.
I am choosing Excel spreadsheet to perform the analysis. The analysis will be based on randomly chosen bike station (start_station_name) – Canal St & Taylor St.
Due to the large size of the dataset, I am using Power Query to load and clean data.
-	Initial analysis of how the data is organized
-	Sorting and filtering 
-	Checking the data for errors
-	Removing duplicates
-	Removing blanks
-	Transforming the data so I can work with it effectively
-	Working with individual spreadsheets to get a better sense of the data layout: calculating the length of each ride, calculating the day of the week that each ride started


4.	Data processing
-	Running a few calculations in one file to understand the data better, calculating the mean of ride length, calculating the max ride lenght, calculating the average ride length per day, calculating the type of bikes used
-	Creating a pivot table to quickly calculate and visualize the data: average ride length, average ride length for users by day of week, calculate the number or rides for users by day of week
-	Performing the same analysis on another file
-	Exploring different seasons to make some initial observations
-	Merging 8 files into a full-year view using Excel Power Query. 
-	Combining Power Query with Pivot Table and Pivot Chart to analyze the data
5.	Data analyzing
-	Number of rides per users: Members have higher number of rides than casual riders
-	Average ride length: Casuals riders ride longer than members and the ride length becomes even longer over the warmer months such as March, April, May, June, July while members present similar ride length throughout the whole period
-	Ride number per day of week: Members have higher number of rides than Casual riders and they have higher number of rides during the week – Monday to Friday which might show that they use bikes to get to and from work. Casual riders on the other hand show similar number of rides throughout the week with just slight increase over the weekend which might show that they use bikes more for pleasure. The most popular day for casual riders is Saturday and for members is Tuesday.
-	Average ride length per day over the 8 month period time: Casual riders have longer average ride length than Members increasing in warmer months while Members have rather similar average ride length per day regardless of the season
-	Max ride length: Ride length of Casual riders is almost twice longer than Members’ ride length
-	Ride number by month Casual riders: the number of rides increases with the season – warmer months have the higher number of rides than winter months
-	Ride number by month Members: the same situation as with Casual riders – the number of rides increases with the season – warmer months show the higher number of rides than winter months
-	Type of bike: from the three types of bikes: classic bikes, electric bikes and docked bikes, classic bike seems to be more popular for both Casual riders and Members. Members do not use docked bikes at all. 


How do Members and Casual Riders use Cyclistic bikes differently?

Total number of rides for Members and Casual Riders
-	Members use bikes more than Casual Riders


Average ride length per month for Members and Casual Riders
  
-	Trendline for Casual Riders shows an increase at a steady rate while a trendline for Members show neither increase nor decrease 

Maximum ride length for Members and Casual Riders

 - maximum ride length for Casual Riders is longer than for Members

Top three end stations for Members and Casual Riders
 
Recommendations:
-	Discount should be given to Casual riders to encourage them to use the bikes more frequently
-	Summer months are more popular with Casual riders so special prices should be developed for these months
-	The three most popular stations for Casual riders should have more bikes available to make sure there are enough of them to use
  



C. Covid analysis using SQL Microsoft SQL Server Management Studio
   
Data set downloaded from ourworldindata.org site as .csv file and saved as an Excel file and imported into SQL Server Management Studio.

Due to the size of the original data set, I have created two separate files for further analysis: Covid_deaths and Covid_vaccination with just selected data.
Some data cleaning have been done such as converting data type and dealing with 0 values. Then the analysis such as total cases versus total deaths, checking data for Poland, analysing total cases versus population
have been performed using SQL language.

Then the two sets have been joined to perform further analysis such as checking the total population versus vaccinations and inserting a rolling count of vaccinated people.
Finally a cte and a view have been created to store data for later analysis in Tableau.



D. Cyclistic analysis using Google BigQuery


This is the same dataset as in the above analysis (B. Cyclistic analysis using Excel). 

The data has been made available by Motive International Inc. under their licence as .csv files.

This time, instead of Excel, I have used SQL language and Google BigQuery platform. Due to the size of the data set, I have used only 4 months of data to perform the analysis and just one randomly choose station 
to create the subset of data. After conduction some analysis and running the queries, I have saved the results and made them public. Then I have exported the file as and .csv file to my computer to be ready for 
visualisation in Tableau.


E. Covid dashboard analysis visualisation using Tableau.
Dashboard can be viewed in Tableau - https://public.tableau.com/app/profile/kasia6333/viz/CovidDashboardAnalysis_16878767654570/Dashboard1?publish=yes


F. Cyclistic dashboard analysis visualisation using Tableau.
Dashboard can be viewed in Tableau - https://public.tableau.com/app/profile/kasia6333/viz/RidesAnalysis_16814870642580/RidesAnalysis




														
										
														
