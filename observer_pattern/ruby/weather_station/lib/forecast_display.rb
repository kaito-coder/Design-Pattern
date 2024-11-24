class ForecastDisplay
  include Observer
  include DisplayElement

  def initialize(weather_data)
    @weather_data = weather_data
    @weather_data.register_observer(self)
    @current_pressure = 29.92
    @last_pressure = 0.0
  end

  def update(_temperature, _humidity, pressure)
    @last_pressure = @current_pressure
    @current_pressure = pressure
    display
  end

  def display
    forecast = if @current_pressure > @last_pressure
                 'Improving weather on the way!'
               elsif @current_pressure == @last_pressure
                 'More of the same'
               else
                 'Watch out for cooler, rainy weather'
               end
    puts "Forecast: #{forecast}"
  end
end
