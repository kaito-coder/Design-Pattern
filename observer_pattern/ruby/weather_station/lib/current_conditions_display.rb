require_relative 'observer'
require_relative 'display_element'

class CurrentConditionsDisplay
  include Observer
  include DisplayElement

  def initialize(weather_data)
    @weather_data = weather_data
    @weather_data.register_observer(self)
  end

  def update(temperature, humidity, _pressure)
    @temperature = temperature
    @humidity = humidity
    display
  end

  def display
    puts "Current conditions: #{@temperature}F degrees and #{@humidity}% humidity"
  end
end
