# Case Study: Cyclistic Bike-Share Data Analysis

## 🌟 Introduction
This project is the capstone project for the **Google Data Analytics Professional Certificate**. In this project, I am acting as a junior data analyst working on the marketing analytics team at Cyclistic, a fictional bike-share company in Chicago. 

## 📋 Project Overview
The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. The primary goal of this project is to design a new marketing strategy to convert casual riders into annual members. 

To answer the business questions and ensure a structured approach, this project follows the six steps of the data analysis process: **Ask, Prepare, Process, Analyze, Share, and Act**.

---

## 1️⃣ Ask ❓
The main objective is to determine the best marketing strategies to convert casual riders into annual members. The analysis is guided by three main questions:
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

---

## 2️⃣ Prepare 🛠️
### Data Source
This analysis uses 12 months of historical trip data spanning from January 2024 to December 2024. The data has been made available by Motivate International Inc. under this [license](insert_link_here). 

### Tools Used
* **MySQL:** Data aggregation, cleaning, and processing.
* **Tableau Public:** Data visualization and dashboard creation.

### Data Import & Combination
The 12 monthly CSV files were imported into MySQL and combined into a single, comprehensive dataset for analysis. 

```sql
-- Example MySQL code used for combining the tables:
CREATE TABLE combined_2024 AS
SELECT * FROM jan_2024
UNION ALL
SELECT * FROM feb_2024
-- ... (continue for all 12 months)
```

## Dashboard
You can view the full interactive dashboard on my Tableau Public profile here: [Cyclistic Bike-Share Analysis Dashboard](https://public.tableau.com/app/profile/chan.jin.hui/viz/Cyclisticbikeshareanalysis_17772213034970/CyclisticBike-ShareDashboard)


<img width="427" height="308" alt="image" src="https://github.com/user-attachments/assets/88868acb-20d8-41fb-ae66-459f61a54537" />














