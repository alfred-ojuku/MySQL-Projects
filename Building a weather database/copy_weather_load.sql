USE weather;
DELETE FROM current_weather;
INSERT INTO current_weather
(
station_id,
station_city,
station_state,
station_lat,
station_lon,
as_of_dt,
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
SELECT   station_id,
         station_city,
         station_state,
         station_lat,
         station_lon,
		 as_of_dt,
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
FROM current_weather_load;