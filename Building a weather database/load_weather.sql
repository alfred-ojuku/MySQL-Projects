USE weather;

DELETE FROM current_weather_load;

LOAD DATA LOCAL INFILE 'C:/Users/Roam/Desktop/MySQL-Projects/Building a weather database/data/weather.csv'
INTO TABLE current_weather_load
FIELDS TERMINATED BY ','
(
station_id,
station_city,
station_state,
station_lat,
station_lon,
@aod,
temp,
feels_like,
wind,
wind_direction,
precipitation,
pressure,
visibility,
humidity,
weather_desc,
sunrise,
sunset
)

SET as_of_dt = str_to_date(@aod,'%Y%m%d %H:%i');

SHOW WARNINGS;

SELECT concat('No data loaded for ', station_id,': ',station_city)
FROM current_weather cw
WHERE cw.station_id NOT IN
(
SELECT station_id
FROM current_weather_load
);


