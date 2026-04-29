create table `2024-divvy-tripdata_cleaned` as
select ride_id, 
		any_value(rideable_type) as rideable_type, 
        min(started_at) as started_at, 
        min(ended_at) as ended_at, 
        any_value(start_station_name) as start_station_name, 
        min(start_station_id) as start_station_id, 
        any_value(end_station_name) as end_station_name, 
        min(end_station_id) as end_station_id, 
        min(start_lat) as start_lat, 
        min(start_lng) as start_lng, 
        min(end_lat) as end_lat, 
        min(end_lng) as end_lng,
        any_value(member_casual) as member_casual
from  `2024-divvy-tripdata_backup`
group by ride_id; -- 5,860,348 rows, 220 rows duplicate ride_id remove

SELECT * FROM `2024-divvy-tripdata_cleaned`; -- 5,860,348 total rows


-- Process phase: Data Transformation

alter table `2024-divvy-tripdata_cleaned`
add column ride_length_mins int
;

update `2024-divvy-tripdata_cleaned`
set ride_length_mins = timestampdiff(minute, started_at, ended_at)
;

alter table `2024-divvy-tripdata_cleaned`
add column day_of_week varchar(30)
;

update `2024-divvy-tripdata_cleaned`
set day_of_week = dayname(started_at)
;

alter table `2024-divvy-tripdata_cleaned`
add column month varchar(30)
;

update `2024-divvy-tripdata_cleaned`
set month = monthname(started_at)
;

-- Process phase: Data Cleaning

select count(ride_id) - count(distinct ride_id) as duplicate_ride_id
from `2024-divvy-tripdata_cleaned`; -- 0 duplicate_ride_id

delete from `2024-divvy-tripdata_cleaned`
where ride_length_mins < 0 
or ride_length_mins > 1440
; -- 7646 row affected, 7646 row outlier removed 

delete from  `2024-divvy-tripdata_cleaned`
where ride_id is null
or started_at is null
or ended_at is null
or member_casual is null
or rideable_type is null
; -- 0 row affected (the null data in these few columns is important for our analyze, therefore if it is null data need to be removed, but result show it is 0 row affected)

SELECT * FROM `2024-divvy-tripdata_cleaned`; -- 5,852,702 total rows after cleaning

SELECT *
FROM `2024-divvy-tripdata_cleaned`
WHERE
(ride_id is null or ride_id = '' or ride_id = 'null')
or (started_at is null) 
or (ended_at is null)
or (member_casual is null or member_casual = '' or member_casual = 'null')
or (rideable_type is null or rideable_type = '' or rideable_type = 'null')
; -- 0 row affected

SELECT 
	SUM(CASE WHEN start_station_name IS NULL OR start_station_name = '' THEN 1 ELSE 0 END) AS null_start_stations,
    SUM(CASE WHEN start_station_id IS NULL OR start_station_id = '' THEN 1 ELSE 0 END) AS null_start_station_id,
    SUM(CASE WHEN end_station_name IS NULL OR end_station_name = '' THEN 1 ELSE 0 END) AS null_end_stations,
    SUM(CASE WHEN end_station_id IS NULL OR end_station_id = '' THEN 1 ELSE 0 END) AS null_end_station_id,
	SUM(CASE WHEN start_lat IS NULL THEN 1 ELSE 0 END) AS null_start_lat,
    SUM(CASE WHEN start_lng IS NULL THEN 1 ELSE 0 END) AS null_start_lng,
    SUM(CASE WHEN end_lat IS NULL THEN 1 ELSE 0 END) AS null_end_lat,
    SUM(CASE WHEN end_lng IS NULL THEN 1 ELSE 0 END) AS null_end_lng,
    SUM(CASE WHEN ride_length_mins IS NULL THEN 1 ELSE 0 END) AS null_ride_length
FROM `2024-divvy-tripdata_cleaned`; -- null_start_stations & null_start_station_id (1073874 null), null_end_stations & null_end_station_id (1097117 null)

SELECT rideable_type, COUNT(*) as number_of_rides
FROM `2024-divvy-tripdata_cleaned`
WHERE (start_station_name IS NULL OR start_station_name = '' OR start_station_name = 'null')
	OR (end_station_name IS NULL OR end_station_name = '' OR end_station_name = 'null')
GROUP BY rideable_type;-- the null data stations consist of electric_bike (1548143 rides), electric_scooter (96510 rides), classic_bike (41 rides)

UPDATE `2024-divvy-tripdata_cleaned`
SET start_station_name = 'On Street', start_station_id = 'N/A'
WHERE start_station_name IS NULL OR start_station_name = '' OR start_station_name = 'null';

UPDATE `2024-divvy-tripdata_cleaned`
SET end_station_name = 'On Street', end_station_id = 'N/A'
WHERE end_station_name IS NULL OR end_station_name = '' OR end_station_name = 'null';

SELECT rideable_type, COUNT(rideable_type)
FROM `2024-divvy-tripdata_cleaned`
GROUP BY rideable_type; -- 3 type of share bike (no outlier)

SELECT start_station_name, COUNT(start_station_name)
FROM `2024-divvy-tripdata_cleaned`
GROUP BY start_station_name; -- 1809 different start_station

SELECT end_station_name, COUNT(end_station_name)
FROM `2024-divvy-tripdata_cleaned`
GROUP BY end_station_name; -- 1816 different end_station

SELECT member_casual, COUNT(member_casual)
FROM `2024-divvy-tripdata_cleaned`
GROUP BY member_casual; -- 2 type of members

SELECT day_of_week, COUNT(day_of_week)
FROM `2024-divvy-tripdata_cleaned`
GROUP BY day_of_week; -- one week 7 days (no error)

SELECT month, COUNT(month)
FROM `2024-divvy-tripdata_cleaned`
GROUP BY month; -- 12 months a year (no error)




