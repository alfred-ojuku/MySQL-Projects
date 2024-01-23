DROP DATABASE IF EXISTS weather;

CREATE DATABASE Weather;

USE weather;

DROP TABLE IF EXISTS current_weather_load;

CREATE TABLE current_weather_load
(
station_id      INT PRIMARY KEY,
station_city    VARCHAR(100),
station_state   CHAR(2),
station_lat     DECIMAL(6,4) NOT NULL,
station_lon     DECIMAL(7,4) NOT NULL,
as_of_dt        DATETIME,
temp            INT  NOT NULL,
feels_like      INT,
wind            INT,
wind_direction  VARCHAR(3),
precipitation   DECIMAL(3,1),
pressure        DECIMAL(6,2),
visibility      DECIMAL(3,1) NOT NULL,
humidity        INT,
weather_desc    VARCHAR(100) NOT NULL,
sunrise         TIME,
sunset          TIME,
CONSTRAINT CHECK(station_lat BETWEEN -90 AND 90),
CONSTRAINT CHECK(station_lon BETWEEN -180 AND 180),
CONSTRAINT CHECK(temp BETWEEN -50 AND 150),
CONSTRAINT CHECK(feels_like BETWEEN -50 AND 150),
CONSTRAINT CHECK(wind BETWEEN 0 AND 300),
CONSTRAINT CHECK(station_lat BETWEEN -90 AND 90),
CONSTRAINT CHECK(wind_direction IN
(
'N','S','E','W','NE','NW','SE','SW',
'NNE','ENE','ESE','SSE','SSW','WSW','WNW','NNW'
)
),
CONSTRAINT CHECK(precipitation BETWEEN 0 AND 400),
CONSTRAINT CHECK(pressure BETWEEN 0 AND 1100),
CONSTRAINT CHECK(visibility BETWEEN 0 AND 20),
CONSTRAINT CHECK(humidity BETWEEN 0 AND 100)
);

DROP TABLE IF EXISTS current_weather;

CREATE TABLE current_weather LIKE current_weather_load;