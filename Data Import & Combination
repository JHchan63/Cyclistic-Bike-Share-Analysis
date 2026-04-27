create table `202405-divvy-tripdata`
(
 ride_id varchar(500),
 rideable_type varchar(500),
 started_at datetime,
 ended_at datetime,
 start_station_name varchar(500),
 start_station_id varchar(500),
 end_station_name varchar(500),
 end_station_id varchar(500),
 start_lat double,
 start_lng double,
 end_lat double,
 end_lng double,
 member_casual varchar(500)
 );
 
 select *
 from `202405-divvy-tripdata` ;
 
 load data infile 'C:\\mysql secure file\\202405-divvy-tripdata.csv' into table `202405-divvy-tripdata`
 fields terminated by ','
 ignore 1 lines;
 
 rename table `jan2024_divvy_tripdata` to `202405-divvy-tripdata`;
 
UPDATE `202405-divvy-tripdata`
SET started_at = STR_TO_DATE(started_at, '%Y-%m-%d %H:%i:%s'),
    ended_at = STR_TO_DATE(ended_at, '%Y-%m-%d %H:%i:%s');
 
LOAD DATA INFILE 'C:\\mysql secure file\\202405-divvy-tripdata.csv'
INTO TABLE `202405-divvy-tripdata`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    @ride_id, 
    @rideable_type, 
    @started_at_str, 
    @ended_at_str, 
    @start_station_name, 
    @start_station_id, 
    @end_station_name, 
    @end_station_id, 
    @start_lat_str, 
    @start_lng_str, 
    @end_lat_str, 
    @end_lng_str, 
    @member_casual
)
SET 
    ride_id = NULLIF(@ride_id, ''),
    rideable_type = NULLIF(@rideable_type, ''),
    started_at = STR_TO_DATE(NULLIF(@started_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    ended_at = STR_TO_DATE(NULLIF(@ended_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    start_station_name = NULLIF(@start_station_name, ''),
    start_station_id = NULLIF(@start_station_id, ''),
    end_station_name = NULLIF(@end_station_name, ''),
    end_station_id = NULLIF(@end_station_id, ''),
    start_lat = CASE WHEN @start_lat_str = '' OR @start_lat_str IS NULL THEN 0 ELSE CAST(@start_lat_str AS DECIMAL(10,6)) END,
    start_lng = CASE WHEN @start_lng_str = '' OR @start_lng_str IS NULL THEN 0 ELSE CAST(@start_lng_str AS DECIMAL(10,6)) END,
    end_lat = CASE WHEN @end_lat_str = '' OR @end_lat_str IS NULL THEN 0 ELSE CAST(@end_lat_str AS DECIMAL(10,6)) END,
    end_lng = CASE WHEN @end_lng_str = '' OR @end_lng_str IS NULL THEN 0 ELSE CAST(@end_lng_str AS DECIMAL(10,6)) END,
    member_casual = NULLIF(@member_casual, '');
 
 create table `202406-divvy-tripdata`
(
 ride_id varchar(500),
 rideable_type varchar(500),
 started_at datetime,
 ended_at datetime,
 start_station_name varchar(500),
 start_station_id varchar(500),
 end_station_name varchar(500),
 end_station_id varchar(500),
 start_lat double,
 start_lng double,
 end_lat double,
 end_lng double,
 member_casual varchar(500)
 );
 
LOAD DATA INFILE 'C:\\mysql secure file\\202406-divvy-tripdata.csv'
INTO TABLE `202406-divvy-tripdata`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    @ride_id, 
    @rideable_type, 
    @started_at_str, 
    @ended_at_str, 
    @start_station_name, 
    @start_station_id, 
    @end_station_name, 
    @end_station_id, 
    @start_lat_str, 
    @start_lng_str, 
    @end_lat_str, 
    @end_lng_str, 
    @member_casual
)
SET 
    ride_id = NULLIF(@ride_id, ''),
    rideable_type = NULLIF(@rideable_type, ''),
    started_at = STR_TO_DATE(NULLIF(@started_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    ended_at = STR_TO_DATE(NULLIF(@ended_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    start_station_name = NULLIF(@start_station_name, ''),
    start_station_id = NULLIF(@start_station_id, ''),
    end_station_name = NULLIF(@end_station_name, ''),
    end_station_id = NULLIF(@end_station_id, ''),
    start_lat = CASE WHEN @start_lat_str = '' OR @start_lat_str IS NULL THEN 0 ELSE CAST(@start_lat_str AS DECIMAL(10,6)) END,
    start_lng = CASE WHEN @start_lng_str = '' OR @start_lng_str IS NULL THEN 0 ELSE CAST(@start_lng_str AS DECIMAL(10,6)) END,
    end_lat = CASE WHEN @end_lat_str = '' OR @end_lat_str IS NULL THEN 0 ELSE CAST(@end_lat_str AS DECIMAL(10,6)) END,
    end_lng = CASE WHEN @end_lng_str = '' OR @end_lng_str IS NULL THEN 0 ELSE CAST(@end_lng_str AS DECIMAL(10,6)) END,
    member_casual = NULLIF(@member_casual, '');
 
 create table `202407-divvy-tripdata`
(
 ride_id varchar(500),
 rideable_type varchar(500),
 started_at datetime,
 ended_at datetime,
 start_station_name varchar(500),
 start_station_id varchar(500),
 end_station_name varchar(500),
 end_station_id varchar(500),
 start_lat double,
 start_lng double,
 end_lat double,
 end_lng double,
 member_casual varchar(500)
 );
 
LOAD DATA INFILE 'C:\\mysql secure file\\202407-divvy-tripdata.csv'
INTO TABLE `202407-divvy-tripdata`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    @ride_id, 
    @rideable_type, 
    @started_at_str, 
    @ended_at_str, 
    @start_station_name, 
    @start_station_id, 
    @end_station_name, 
    @end_station_id, 
    @start_lat_str, 
    @start_lng_str, 
    @end_lat_str, 
    @end_lng_str, 
    @member_casual
)
SET 
    ride_id = NULLIF(@ride_id, ''),
    rideable_type = NULLIF(@rideable_type, ''),
    started_at = STR_TO_DATE(NULLIF(@started_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    ended_at = STR_TO_DATE(NULLIF(@ended_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    start_station_name = NULLIF(@start_station_name, ''),
    start_station_id = NULLIF(@start_station_id, ''),
    end_station_name = NULLIF(@end_station_name, ''),
    end_station_id = NULLIF(@end_station_id, ''),
    start_lat = CASE WHEN @start_lat_str = '' OR @start_lat_str IS NULL THEN 0 ELSE CAST(@start_lat_str AS DECIMAL(10,6)) END,
    start_lng = CASE WHEN @start_lng_str = '' OR @start_lng_str IS NULL THEN 0 ELSE CAST(@start_lng_str AS DECIMAL(10,6)) END,
    end_lat = CASE WHEN @end_lat_str = '' OR @end_lat_str IS NULL THEN 0 ELSE CAST(@end_lat_str AS DECIMAL(10,6)) END,
    end_lng = CASE WHEN @end_lng_str = '' OR @end_lng_str IS NULL THEN 0 ELSE CAST(@end_lng_str AS DECIMAL(10,6)) END,
    member_casual = NULLIF(@member_casual, '');
    
    create table `202408-divvy-tripdata`
(
 ride_id varchar(500),
 rideable_type varchar(500),
 started_at datetime,
 ended_at datetime,
 start_station_name varchar(500),
 start_station_id varchar(500),
 end_station_name varchar(500),
 end_station_id varchar(500),
 start_lat double,
 start_lng double,
 end_lat double,
 end_lng double,
 member_casual varchar(500)
 );
 
LOAD DATA INFILE 'C:\\mysql secure file\\202408-divvy-tripdata.csv'
INTO TABLE `202408-divvy-tripdata`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    @ride_id, 
    @rideable_type, 
    @started_at_str, 
    @ended_at_str, 
    @start_station_name, 
    @start_station_id, 
    @end_station_name, 
    @end_station_id, 
    @start_lat_str, 
    @start_lng_str, 
    @end_lat_str, 
    @end_lng_str, 
    @member_casual
)
SET 
    ride_id = NULLIF(@ride_id, ''),
    rideable_type = NULLIF(@rideable_type, ''),
    started_at = STR_TO_DATE(NULLIF(@started_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    ended_at = STR_TO_DATE(NULLIF(@ended_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    start_station_name = NULLIF(@start_station_name, ''),
    start_station_id = NULLIF(@start_station_id, ''),
    end_station_name = NULLIF(@end_station_name, ''),
    end_station_id = NULLIF(@end_station_id, ''),
    start_lat = CASE WHEN @start_lat_str = '' OR @start_lat_str IS NULL THEN 0 ELSE CAST(@start_lat_str AS DECIMAL(10,6)) END,
    start_lng = CASE WHEN @start_lng_str = '' OR @start_lng_str IS NULL THEN 0 ELSE CAST(@start_lng_str AS DECIMAL(10,6)) END,
    end_lat = CASE WHEN @end_lat_str = '' OR @end_lat_str IS NULL THEN 0 ELSE CAST(@end_lat_str AS DECIMAL(10,6)) END,
    end_lng = CASE WHEN @end_lng_str = '' OR @end_lng_str IS NULL THEN 0 ELSE CAST(@end_lng_str AS DECIMAL(10,6)) END,
    member_casual = NULLIF(@member_casual, '');
    
    create table `202409-divvy-tripdata`
(
 ride_id varchar(500),
 rideable_type varchar(500),
 started_at datetime,
 ended_at datetime,
 start_station_name varchar(500),
 start_station_id varchar(500),
 end_station_name varchar(500),
 end_station_id varchar(500),
 start_lat double,
 start_lng double,
 end_lat double,
 end_lng double,
 member_casual varchar(500)
 );
 
LOAD DATA INFILE 'C:\\mysql secure file\\202409-divvy-tripdata.csv'
INTO TABLE `202409-divvy-tripdata`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    @ride_id, 
    @rideable_type, 
    @started_at_str, 
    @ended_at_str, 
    @start_station_name, 
    @start_station_id, 
    @end_station_name, 
    @end_station_id, 
    @start_lat_str, 
    @start_lng_str, 
    @end_lat_str, 
    @end_lng_str, 
    @member_casual
)
SET 
    ride_id = NULLIF(@ride_id, ''),
    rideable_type = NULLIF(@rideable_type, ''),
    started_at = STR_TO_DATE(NULLIF(@started_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    ended_at = STR_TO_DATE(NULLIF(@ended_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    start_station_name = NULLIF(@start_station_name, ''),
    start_station_id = NULLIF(@start_station_id, ''),
    end_station_name = NULLIF(@end_station_name, ''),
    end_station_id = NULLIF(@end_station_id, ''),
    start_lat = CASE WHEN @start_lat_str = '' OR @start_lat_str IS NULL THEN 0 ELSE CAST(@start_lat_str AS DECIMAL(10,6)) END,
    start_lng = CASE WHEN @start_lng_str = '' OR @start_lng_str IS NULL THEN 0 ELSE CAST(@start_lng_str AS DECIMAL(10,6)) END,
    end_lat = CASE WHEN @end_lat_str = '' OR @end_lat_str IS NULL THEN 0 ELSE CAST(@end_lat_str AS DECIMAL(10,6)) END,
    end_lng = CASE WHEN @end_lng_str = '' OR @end_lng_str IS NULL THEN 0 ELSE CAST(@end_lng_str AS DECIMAL(10,6)) END,
    member_casual = NULLIF(@member_casual, '');
    
    create table `202410-divvy-tripdata`
(
 ride_id varchar(500),
 rideable_type varchar(500),
 started_at datetime,
 ended_at datetime,
 start_station_name varchar(500),
 start_station_id varchar(500),
 end_station_name varchar(500),
 end_station_id varchar(500),
 start_lat double,
 start_lng double,
 end_lat double,
 end_lng double,
 member_casual varchar(500)
 );
 
LOAD DATA INFILE 'C:\\mysql secure file\\202410-divvy-tripdata.csv'
INTO TABLE `202410-divvy-tripdata`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    @ride_id, 
    @rideable_type, 
    @started_at_str, 
    @ended_at_str, 
    @start_station_name, 
    @start_station_id, 
    @end_station_name, 
    @end_station_id, 
    @start_lat_str, 
    @start_lng_str, 
    @end_lat_str, 
    @end_lng_str, 
    @member_casual
)
SET 
    ride_id = NULLIF(@ride_id, ''),
    rideable_type = NULLIF(@rideable_type, ''),
    started_at = STR_TO_DATE(NULLIF(@started_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    ended_at = STR_TO_DATE(NULLIF(@ended_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    start_station_name = NULLIF(@start_station_name, ''),
    start_station_id = NULLIF(@start_station_id, ''),
    end_station_name = NULLIF(@end_station_name, ''),
    end_station_id = NULLIF(@end_station_id, ''),
    start_lat = CASE WHEN @start_lat_str = '' OR @start_lat_str IS NULL THEN 0 ELSE CAST(@start_lat_str AS DECIMAL(10,6)) END,
    start_lng = CASE WHEN @start_lng_str = '' OR @start_lng_str IS NULL THEN 0 ELSE CAST(@start_lng_str AS DECIMAL(10,6)) END,
    end_lat = CASE WHEN @end_lat_str = '' OR @end_lat_str IS NULL THEN 0 ELSE CAST(@end_lat_str AS DECIMAL(10,6)) END,
    end_lng = CASE WHEN @end_lng_str = '' OR @end_lng_str IS NULL THEN 0 ELSE CAST(@end_lng_str AS DECIMAL(10,6)) END,
    member_casual = NULLIF(@member_casual, '');
    
        create table `202411-divvy-tripdata`
(
 ride_id varchar(500),
 rideable_type varchar(500),
 started_at datetime,
 ended_at datetime,
 start_station_name varchar(500),
 start_station_id varchar(500),
 end_station_name varchar(500),
 end_station_id varchar(500),
 start_lat double,
 start_lng double,
 end_lat double,
 end_lng double,
 member_casual varchar(500)
 );
 
LOAD DATA INFILE 'C:\\mysql secure file\\202411-divvy-tripdata.csv'
INTO TABLE `202411-divvy-tripdata`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    @ride_id, 
    @rideable_type, 
    @started_at_str, 
    @ended_at_str, 
    @start_station_name, 
    @start_station_id, 
    @end_station_name, 
    @end_station_id, 
    @start_lat_str, 
    @start_lng_str, 
    @end_lat_str, 
    @end_lng_str, 
    @member_casual
)
SET 
    ride_id = NULLIF(@ride_id, ''),
    rideable_type = NULLIF(@rideable_type, ''),
    started_at = STR_TO_DATE(NULLIF(@started_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    ended_at = STR_TO_DATE(NULLIF(@ended_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    start_station_name = NULLIF(@start_station_name, ''),
    start_station_id = NULLIF(@start_station_id, ''),
    end_station_name = NULLIF(@end_station_name, ''),
    end_station_id = NULLIF(@end_station_id, ''),
    start_lat = CASE WHEN @start_lat_str = '' OR @start_lat_str IS NULL THEN 0 ELSE CAST(@start_lat_str AS DECIMAL(10,6)) END,
    start_lng = CASE WHEN @start_lng_str = '' OR @start_lng_str IS NULL THEN 0 ELSE CAST(@start_lng_str AS DECIMAL(10,6)) END,
    end_lat = CASE WHEN @end_lat_str = '' OR @end_lat_str IS NULL THEN 0 ELSE CAST(@end_lat_str AS DECIMAL(10,6)) END,
    end_lng = CASE WHEN @end_lng_str = '' OR @end_lng_str IS NULL THEN 0 ELSE CAST(@end_lng_str AS DECIMAL(10,6)) END,
    member_casual = NULLIF(@member_casual, '');
    
    create table `202412-divvy-tripdata`
(
 ride_id varchar(500),
 rideable_type varchar(500),
 started_at datetime,
 ended_at datetime,
 start_station_name varchar(500),
 start_station_id varchar(500),
 end_station_name varchar(500),
 end_station_id varchar(500),
 start_lat double,
 start_lng double,
 end_lat double,
 end_lng double,
 member_casual varchar(500)
 );
 
LOAD DATA INFILE 'C:\\mysql secure file\\202412-divvy-tripdata.csv'
INTO TABLE `202412-divvy-tripdata`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    @ride_id, 
    @rideable_type, 
    @started_at_str, 
    @ended_at_str, 
    @start_station_name, 
    @start_station_id, 
    @end_station_name, 
    @end_station_id, 
    @start_lat_str, 
    @start_lng_str, 
    @end_lat_str, 
    @end_lng_str, 
    @member_casual
)
SET 
    ride_id = NULLIF(@ride_id, ''),
    rideable_type = NULLIF(@rideable_type, ''),
    started_at = STR_TO_DATE(NULLIF(@started_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    ended_at = STR_TO_DATE(NULLIF(@ended_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    start_station_name = NULLIF(@start_station_name, ''),
    start_station_id = NULLIF(@start_station_id, ''),
    end_station_name = NULLIF(@end_station_name, ''),
    end_station_id = NULLIF(@end_station_id, ''),
    start_lat = CASE WHEN @start_lat_str = '' OR @start_lat_str IS NULL THEN 0 ELSE CAST(@start_lat_str AS DECIMAL(10,6)) END,
    start_lng = CASE WHEN @start_lng_str = '' OR @start_lng_str IS NULL THEN 0 ELSE CAST(@start_lng_str AS DECIMAL(10,6)) END,
    end_lat = CASE WHEN @end_lat_str = '' OR @end_lat_str IS NULL THEN 0 ELSE CAST(@end_lat_str AS DECIMAL(10,6)) END,
    end_lng = CASE WHEN @end_lng_str = '' OR @end_lng_str IS NULL THEN 0 ELSE CAST(@end_lng_str AS DECIMAL(10,6)) END,
    member_casual = NULLIF(@member_casual, '');
    
    create table `202401-divvy-tripdata`
(
 ride_id varchar(500),
 rideable_type varchar(500),
 started_at datetime,
 ended_at datetime,
 start_station_name varchar(500),
 start_station_id varchar(500),
 end_station_name varchar(500),
 end_station_id varchar(500),
 start_lat double,
 start_lng double,
 end_lat double,
 end_lng double,
 member_casual varchar(500)
 );
 
LOAD DATA INFILE 'C:\\mysql secure file\\202401-divvy-tripdata.csv'
INTO TABLE `202401-divvy-tripdata`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    @ride_id, 
    @rideable_type, 
    @started_at_str, 
    @ended_at_str, 
    @start_station_name, 
    @start_station_id, 
    @end_station_name, 
    @end_station_id, 
    @start_lat_str, 
    @start_lng_str, 
    @end_lat_str, 
    @end_lng_str, 
    @member_casual
)
SET 
    ride_id = NULLIF(@ride_id, ''),
    rideable_type = NULLIF(@rideable_type, ''),
    started_at = STR_TO_DATE(NULLIF(@started_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    ended_at = STR_TO_DATE(NULLIF(@ended_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    start_station_name = NULLIF(@start_station_name, ''),
    start_station_id = NULLIF(@start_station_id, ''),
    end_station_name = NULLIF(@end_station_name, ''),
    end_station_id = NULLIF(@end_station_id, ''),
    start_lat = CASE WHEN @start_lat_str = '' OR @start_lat_str IS NULL THEN 0 ELSE CAST(@start_lat_str AS DECIMAL(10,6)) END,
    start_lng = CASE WHEN @start_lng_str = '' OR @start_lng_str IS NULL THEN 0 ELSE CAST(@start_lng_str AS DECIMAL(10,6)) END,
    end_lat = CASE WHEN @end_lat_str = '' OR @end_lat_str IS NULL THEN 0 ELSE CAST(@end_lat_str AS DECIMAL(10,6)) END,
    end_lng = CASE WHEN @end_lng_str = '' OR @end_lng_str IS NULL THEN 0 ELSE CAST(@end_lng_str AS DECIMAL(10,6)) END,
    member_casual = NULLIF(@member_casual, '');
    
      create table `202402-divvy-tripdata`
(
 ride_id varchar(500),
 rideable_type varchar(500),
 started_at datetime,
 ended_at datetime,
 start_station_name varchar(500),
 start_station_id varchar(500),
 end_station_name varchar(500),
 end_station_id varchar(500),
 start_lat double,
 start_lng double,
 end_lat double,
 end_lng double,
 member_casual varchar(500)
 );
 
LOAD DATA INFILE 'C:\\mysql secure file\\202402-divvy-tripdata.csv'
INTO TABLE `202402-divvy-tripdata`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    @ride_id, 
    @rideable_type, 
    @started_at_str, 
    @ended_at_str, 
    @start_station_name, 
    @start_station_id, 
    @end_station_name, 
    @end_station_id, 
    @start_lat_str, 
    @start_lng_str, 
    @end_lat_str, 
    @end_lng_str, 
    @member_casual
)
SET 
    ride_id = NULLIF(@ride_id, ''),
    rideable_type = NULLIF(@rideable_type, ''),
    started_at = STR_TO_DATE(NULLIF(@started_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    ended_at = STR_TO_DATE(NULLIF(@ended_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    start_station_name = NULLIF(@start_station_name, ''),
    start_station_id = NULLIF(@start_station_id, ''),
    end_station_name = NULLIF(@end_station_name, ''),
    end_station_id = NULLIF(@end_station_id, ''),
    start_lat = CASE WHEN @start_lat_str = '' OR @start_lat_str IS NULL THEN 0 ELSE CAST(@start_lat_str AS DECIMAL(10,6)) END,
    start_lng = CASE WHEN @start_lng_str = '' OR @start_lng_str IS NULL THEN 0 ELSE CAST(@start_lng_str AS DECIMAL(10,6)) END,
    end_lat = CASE WHEN @end_lat_str = '' OR @end_lat_str IS NULL THEN 0 ELSE CAST(@end_lat_str AS DECIMAL(10,6)) END,
    end_lng = CASE WHEN @end_lng_str = '' OR @end_lng_str IS NULL THEN 0 ELSE CAST(@end_lng_str AS DECIMAL(10,6)) END,
    member_casual = NULLIF(@member_casual, '');
    
    create table `202403-divvy-tripdata`
(
 ride_id varchar(500),
 rideable_type varchar(500),
 started_at datetime,
 ended_at datetime,
 start_station_name varchar(500),
 start_station_id varchar(500),
 end_station_name varchar(500),
 end_station_id varchar(500),
 start_lat double,
 start_lng double,
 end_lat double,
 end_lng double,
 member_casual varchar(500)
 );
 
LOAD DATA INFILE 'C:\\mysql secure file\\202403-divvy-tripdata.csv'
INTO TABLE `202403-divvy-tripdata`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    @ride_id, 
    @rideable_type, 
    @started_at_str, 
    @ended_at_str, 
    @start_station_name, 
    @start_station_id, 
    @end_station_name, 
    @end_station_id, 
    @start_lat_str, 
    @start_lng_str, 
    @end_lat_str, 
    @end_lng_str, 
    @member_casual
)
SET 
    ride_id = NULLIF(@ride_id, ''),
    rideable_type = NULLIF(@rideable_type, ''),
    started_at = STR_TO_DATE(NULLIF(@started_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    ended_at = STR_TO_DATE(NULLIF(@ended_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    start_station_name = NULLIF(@start_station_name, ''),
    start_station_id = NULLIF(@start_station_id, ''),
    end_station_name = NULLIF(@end_station_name, ''),
    end_station_id = NULLIF(@end_station_id, ''),
    start_lat = CASE WHEN @start_lat_str = '' OR @start_lat_str IS NULL THEN 0 ELSE CAST(@start_lat_str AS DECIMAL(10,6)) END,
    start_lng = CASE WHEN @start_lng_str = '' OR @start_lng_str IS NULL THEN 0 ELSE CAST(@start_lng_str AS DECIMAL(10,6)) END,
    end_lat = CASE WHEN @end_lat_str = '' OR @end_lat_str IS NULL THEN 0 ELSE CAST(@end_lat_str AS DECIMAL(10,6)) END,
    end_lng = CASE WHEN @end_lng_str = '' OR @end_lng_str IS NULL THEN 0 ELSE CAST(@end_lng_str AS DECIMAL(10,6)) END,
    member_casual = NULLIF(@member_casual, '');
    
    create table `202404-divvy-tripdata`
(
 ride_id varchar(500),
 rideable_type varchar(500),
 started_at datetime,
 ended_at datetime,
 start_station_name varchar(500),
 start_station_id varchar(500),
 end_station_name varchar(500),
 end_station_id varchar(500),
 start_lat double,
 start_lng double,
 end_lat double,
 end_lng double,
 member_casual varchar(500)
 );
 
LOAD DATA INFILE 'C:\\mysql secure file\\202404-divvy-tripdata.csv'
INTO TABLE `202404-divvy-tripdata`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    @ride_id, 
    @rideable_type, 
    @started_at_str, 
    @ended_at_str, 
    @start_station_name, 
    @start_station_id, 
    @end_station_name, 
    @end_station_id, 
    @start_lat_str, 
    @start_lng_str, 
    @end_lat_str, 
    @end_lng_str, 
    @member_casual
)
SET 
    ride_id = NULLIF(@ride_id, ''),
    rideable_type = NULLIF(@rideable_type, ''),
    started_at = STR_TO_DATE(NULLIF(@started_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    ended_at = STR_TO_DATE(NULLIF(@ended_at_str, ''), '%Y-%m-%d %H:%i:%s'),
    start_station_name = NULLIF(@start_station_name, ''),
    start_station_id = NULLIF(@start_station_id, ''),
    end_station_name = NULLIF(@end_station_name, ''),
    end_station_id = NULLIF(@end_station_id, ''),
    start_lat = CASE WHEN @start_lat_str = '' OR @start_lat_str IS NULL THEN 0 ELSE CAST(@start_lat_str AS DECIMAL(10,6)) END,
    start_lng = CASE WHEN @start_lng_str = '' OR @start_lng_str IS NULL THEN 0 ELSE CAST(@start_lng_str AS DECIMAL(10,6)) END,
    end_lat = CASE WHEN @end_lat_str = '' OR @end_lat_str IS NULL THEN 0 ELSE CAST(@end_lat_str AS DECIMAL(10,6)) END,
    end_lng = CASE WHEN @end_lng_str = '' OR @end_lng_str IS NULL THEN 0 ELSE CAST(@end_lng_str AS DECIMAL(10,6)) END,
    member_casual = NULLIF(@member_casual, '');
    
create table `2024-divvy-tripdata` as (
	select * from `202401-divvy-tripdata`
    union all 
    select * from `202402-divvy-tripdata`
    union all
    select * from `202403-divvy-tripdata`
    union all
    select * from `202404-divvy-tripdata`
    union all
    select * from `202405-divvy-tripdata`
    union all
    select * from `202406-divvy-tripdata`
    union all
    select * from `202407-divvy-tripdata`
    union all
    select * from `202408-divvy-tripdata`
    union all
    select * from `202409-divvy-tripdata`
    union all
    select * from `202410-divvy-tripdata`
    union all
    select * from `202411-divvy-tripdata`
    union all
    select * from `202412-divvy-tripdata`
    );


create table `2024-divvy-tripdata_backup` as 
select *
from `2024-divvy-tripdata`;


