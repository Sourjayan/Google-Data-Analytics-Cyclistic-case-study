-- data analysis

--bike types used by riders
SELECT member_casual, rideable_type, COUNT(*) AS total_trips
FROM `2022_tripdata.cleaned_combined_data`
GROUP BY member_casual, rideable_type
ORDER BY member_casual, total_trips;

-- number of trips per month
SELECT month, member_casual, COUNT(ride_id) AS total_trips
FROM `2022_tripdata.cleaned_combined_data`
GROUP BY month, member_casual
ORDER BY member_casual;

--number of rides per day of week
SELECT day_of_week, member_casual, COUNT(ride_id) AS total_trips
FROM `2022_tripdata.cleaned_combined_data`
GROUP BY day_of_week, member_casual
ORDER BY member_casual;

--number of trps per hour
SELECT EXTRACT(HOUR FROM started_at) AS hour_of_day, member_casual, COUNT(ride_id) AS total_trips
FROM `2022_tripdata.cleaned_combined_data`
GROUP BY hour_of_day, member_casual
ORDER BY member_casual;

--avg ride_length per month
SELECT month, member_casual, AVG(ride_length) AS avg_ride_duration
FROM `2022_tripdata.cleaned_combined_data`
GROUP BY month, member_casual;

--avg ride_length per day of week
SELECT day_of_week, member_casual, AVG(ride_length) AS avg_ride_duration
FROM `2022_tripdata.cleaned_combined_data`
GROUP BY day_of_week, member_casual;

--avg ride_length per hour
SELECT EXTRACT(HOUR FROM started_at) AS hour_of_day, member_casual, AVG(ride_length) AS avg_ride_duration
FROM `2022_tripdata.cleaned_combined_data`
GROUP BY hour_of_day, member_casual;
