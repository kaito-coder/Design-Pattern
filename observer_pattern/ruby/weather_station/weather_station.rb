# .rb
require_relative 'lib/weather_data'
require_relative 'lib/current_conditions_display'
require_relative 'lib/statistics_display'
require_relative 'lib/forecast_display'

weather_data = WeatherData.new

current_display = CurrentConditionsDisplay.new(weather_data)
StatisticsDisplay.new(weather_data)
ForecastDisplay.new(weather_data)

puts "\nFirst weather update:"
weather_data.set_measurements(80.0, 65.0, 30.4)

puts "\nSecond weather update:"
weather_data.set_measurements(82.0, 70.0, 29.2)

puts "\nThird weather update:"
weather_data.set_measurements(78.0, 90.0, 29.2)

puts "\nRemoving current conditions display..."
weather_data.remove_observer(current_display)

puts "\nFourth weather update (without current conditions):"
weather_data.set_measurements(75.0, 85.0, 29.4)
