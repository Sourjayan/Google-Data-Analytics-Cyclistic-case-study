CREATE TABLE  `2022_tripdata.combined_data` AS (
  SELECT * FROM `2022_tripdata.202201_tripdata`
  UNION ALL
  SELECT * FROM `2022_tripdata.202202_tripdata`
  UNION ALL
  SELECT * FROM `2022_tripdata.202203_tripdata`
  UNION ALL
  SELECT * FROM `2022_tripdata.202204_tripdata`
  UNION ALL
  SELECT * FROM `2022_tripdata.202211_tripdata`
  UNION ALL
  SELECT * FROM `2022_tripdata.202212_tripdata`
);

  -- checking number of rows
SELECT COUNT(*)
FROM `2022_tripdata.combined_data`;
