package main

import "weather-station/weather"

func main() {
	weatherData := weather.NewWeatherData()

	currentDisplay := weather.NewCurrentConditionsDisplay("CurrentDisplay")
	statisticsDisplay := weather.NewStatisticsDisplay("StatisticsDisplay")
	forecastDisplay := weather.NewForecastDisplay("ForecastDisplay")

	weatherData.RegisterObserver(currentDisplay)
	weatherData.RegisterObserver(statisticsDisplay)
	weatherData.RegisterObserver(forecastDisplay)

	weatherData.SetMeasurements(80, 65, 30.4)
	weatherData.SetMeasurements(82, 70, 29.2)
	weatherData.SetMeasurements(78, 90, 29.2)

	weatherData.RemoveObserver(statisticsDisplay)
	weatherData.SetMeasurements(62, 90, 28.1)
}
