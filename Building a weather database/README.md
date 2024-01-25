I'll build a weather database for a trucking company, the company needs a way of knowing the current weather in different places so that they can warn the drivers incase of harzadous weather conditions. The weather database is incorporated in the companies MySQL database and will allow the existing trucking application to show the weather's impact on scheduling etc.

The weather datafiles are from a third party company that provides weather data. In the weather database there are two tables current_weather_load and current_weather. The data is loaded from the csv file to the current_weather_load table. If the data loads without any problems the data is loaded into the current_weather table which is used by the application.

### Requirements
- Linux Operating system (Ubuntu/Debian) or Alternatively you can use a VM in [google cloud platform](https://console.cloud.google.com/).
- MySQL-Sever <br>
To login into MySQL server though the command line without having to type in the password, add a .cnf file to your home directory and add all the details as done in this repo.

### Project Overview
I'll schedule a cron job to run the weather.sh script every 5 minutes.If a new weather file exists, it will be loaded into the current_weather_load table and subsequently copied to the current_weather table if there are no errors in the loading stage.

### Reference
MySQL Crash Course A hands on introduction to database development by Rick Silva. 
