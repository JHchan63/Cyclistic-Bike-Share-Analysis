# Case Study: Cyclistic Bike-Share Data Analysis

## 🌟 Introduction
This project is the capstone project for the **Google Data Analytics Professional Certificate**. In this project, I cleaned and analyzed nearly 6 million rows of trip data using **MySQL** and built an interactive visualization dashboard in **Tableau Public** to uncover actionable business insights.

## 📋 Project Overview
### **Company Background**
Cyclistic is a fictional bike-share company in Chicago that launched a successful bike-share program in 2016. The company operates a network of 692 stations and a fleet of 5,824 geotracked bicycles across Chicago.

### **Business Challenge**
Cyclistic's marketing strategy relied on building general awareness and appealing to broad consumer segments through flexible pricing: single-ride passes, full-day passes, and annual memberships. Users who purchase single-ride or full-day passes are classified as casual riders, while those purchasing annual subscriptions are Cyclistic members. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships.

### **Project Objective**
The primary goal of this project is to design a new marketing strategy to convert casual riders into annual members. Acting as a junior data analyst on the marketing analytics team, my goal is to analyze historical trip data to uncover how casual riders and annual members use the service differently. These data-driven insights will guide the Director of Marketing and the executive team in developing targeted digital campaigns to convert casual riders into long-term annual members

To answer the business questions and ensure a structured approach, this project follows the six steps of the data analysis process:
**[Ask](#1-ask-)**, **[Prepare](#2-prepare-)**, **[Process](#3-process-)**, **[Analyze](#4-analyze-)**, **[Share](#5-share-)**, and **[Act](#6-act--conclusion-)**.


## 1. Ask ❓
The main objective is to determine the best marketing strategies to convert casual riders into annual members. The analysis is guided by the main question:
How do annual members and casual riders use Cyclistic bikes differently?


## 2. Prepare 🛠️
### Data Source
This analysis uses 12 months of historical trip data spanning from January 2024 to December 2024.
[Note: you can review the [Data Source](https://divvy-tripdata.s3.amazonaws.com/index.html) and the data has been made available by Motivate International Inc. under this [license](https://divvybikes.com/data-license-agreement)]

### Tools Used
* **MySQL:** Data aggregation, cleaning, and processing.
* **Tableau Public:** Data visualization and dashboard creation.

### Data Import & Combination
The 12 monthly CSV files were imported into MySQL and combined into a single, comprehensive dataset for analysis. 

```sql
-- Example MySQL code used for combining the tables:
create table `2024-divvy-tripdata` as (
select * from `202401-divvy-tripdata`
union all 
select * from `202402-divvy-tripdata`
union all
select * from `202403-divvy-tripdata`
union all
-- ... (continue for all 12 months)
```


## 3. Process 🧹
To ensure the data is accurate, consistent, and ready for analysis, I performed the following data cleaning and manipulation steps in MySQL:

* **Created Data Backup:** Before executing any cleaning queries, created a backup table and using new table named `2024-divvy-tripdata_cleaned` for cleaning process to preserve the original dataset. The table columns and their corresponding data types were shown as follows:
  <img width="280" height="305" alt="image" src="https://github.com/user-attachments/assets/a6a28dd9-7c97-40b5-bd99-0f4a03b91d91" />

* **Removed Duplicates:** Checked and removed any duplicate `ride_id` entries to ensure data integrity (220 rows duplicate `ride_id` were removed)
* **Added Calculated Columns:** Created new columns for `ride_length_mins`, `day_of_week`, and `month` to facilitate time-based analysis.
  ```sql
  update `2024-divvy-tripdata_cleaned`
  set ride_length_mins = timestampdiff(minute, started_at, ended_at);

  update `2024-divvy-tripdata_cleaned`
  set day_of_week = dayname(started_at);

  update `2024-divvy-tripdata_cleaned`
  set month = monthname(started_at);
  ```
  
* **Removed Outliers:** Filtered out erroneous data where `ride_length_mins` was less than 0 minutes or greater than 1,440 minutes (24 hours).
  ```sql
  delete from `2024-divvy-tripdata_cleaned`
  where ride_length_mins < 0 
  or ride_length_mins > 1440
  ; -- 7646 rows affected, 7646 row outlier removed 
  ```
  
* **Ride Type Categorization:** Identified and confirmed 3 distinct types of rideable bicycles used in the dataset.
  ```sql
  SELECT rideable_type, COUNT(rideable_type)
  FROM `2024-divvy-tripdata_cleaned`
  GROUP BY rideable_type; -- 3 type of share bikes
  ```
  
* **Handled Null Values (Missing Data):** Discovered `NULL` values exclusively in the `start_station_name`, `end_station_name`, `start_station_id`, and `end_station_id` columns.
  * Before removing any missing data, I ran a query to understand which types of rides were missing station names.
  <br>
  
  ```sql
  SELECT rideable_type, COUNT(*) as number_of_rides
  FROM `2024-divvy-tripdata_cleaned`
  WHERE (start_station_name IS NULL OR start_station_name = '' OR start_station_name = 'null')
	  OR (end_station_name IS NULL OR end_station_name = '' OR end_station_name = 'null')
  GROUP BY rideable_type;
  ```
  * **Findings:** The results revealed over 1.6 million rows of missing station data, distributed across 3 ride types:
    | rideable_type | number_of_rides |
    | :--- | :--- |
    | electric_bike | 1,548,143 |
    | electric_scooter | 96,510 |
    | classic_bike | 41 |

  * **Action Taken:**  I chose *not* to delete these rows. Dropping over 1.5 million rows would result in a massive loss of crucial data, skewing our analysis on riding time and ride-type preferences. Furthermore, the       missing data is almost entirely tied to electric bikes and scooters. Because these vehicles are dockless, users often end their trips by locking them on the street rather than returning them to a designated station.       Therefore, a missing station name is actually valid behavioral data.

  * I replaced the `NULL` station names with `On Street` and replaced the `NULL` station IDs with `'NA'`.
    
  ```sql
  UPDATE `2024-divvy-tripdata_cleaned`
  SET start_station_name = 'On Street', start_station_id = 'N/A'
  WHERE start_station_name IS NULL OR start_station_name = '' OR start_station_name = 'null';

  UPDATE `2024-divvy-tripdata_cleaned`
  SET end_station_name = 'On Street', end_station_id = 'N/A'
  WHERE end_station_name IS NULL OR end_station_name = '' OR end_station_name = 'null';
  ```

## 4. Analyze 📊
*(In this section, we explore the data to find trends and relationships between casual riders and members).*

### Total Number of Rides by Membership Types in 2024 
<img width="427" height="308" alt="image" src="https://github.com/user-attachments/assets/88868acb-20d8-41fb-ae66-459f61a54537" /> 
<br>

*  Annual members in Cyclistic were the significantly higher proportion which is 63% in total compared to the casual riders in 2024.

### Total Number of Rides by Types of Bikes (Members vs. Casual Riders)  
<img width="1543" height="829" alt="image" src="https://github.com/user-attachments/assets/f08e8d23-2a4f-4c52-a241-3c32726921d5" />
<br>

* Cyclistic have 3 types of bikes which is classic bike, electric bike and electric scooter.
* Both members and casual riders in Cyclistic more prefer electric bike compared to other types of ride cause electric bike have the largest total amount of ride compared to other types of ride.

### Total Duration of Rides Among Different Types of Bikes (Members vs. Casual Riders)  
<img width="1542" height="399" alt="image" src="https://github.com/user-attachments/assets/5cf8bc3a-8520-4306-b703-f6ae0ee4ad61" />
<br>
<img width="401" height="239" alt="image" src="https://github.com/user-attachments/assets/c4ba9d74-6133-4928-ad24-b81c2f49e5d2" />
<br>

* Altough electrical bikes have the highest amount of total rides but the highest of total riding time is classic bike, this is because the trip time that a classic bike will take longer than the electric bike as electric bike is take lower human power on riding.
* 




## 5. Share 📈
To effectively communicate these findings to the executive team, I created an interactive dashboard in Tableau.

**🔗 [View the Full Interactive Tableau Dashboard Here](insert_your_tableau_public_link_here)**

![Tableau Dashboard Preview](insert_dashboard_screenshot_link_here)

### 🔑 Key Insights
1. **Insight 1:** (e.g., Casual riders ride twice as long as members, usually on weekends.)
2. **Insight 2:** (e.g., Members use bikes primarily for weekday commuting.)
3. **Insight 3:** (e.g., Electric bikes are the most popular choice for dockless 'on street' rides.)


## 6. Act & Conclusion 💡
From the analysis, I have prepared the top three recommendations to help the marketing team convert casual riders into annual members:

1. **Recommendation 1:** (e.g., Introduce a "Weekend Warrior" annual membership tier since casual riders are most active on weekends.)
2. **Recommendation 2:** (e.g., Launch targeted digital media campaigns on Friday afternoons offering discounts on annual memberships.)
3. **Recommendation 3:** (e.g., Offer priority unlocking or discounted e-bike rates exclusively for annual members, as e-bikes are highly popular.)

## Dashboard
You can view the full interactive dashboard on my Tableau Public profile here: [Cyclistic Bike-Share Analysis Dashboard](https://public.tableau.com/app/profile/chan.jin.hui/viz/Cyclisticbikeshareanalysis_17772213034970/CyclisticBike-ShareDashboard)

















