class StatisticsDisplay
  include Observer
  include DisplayElement

  def initialize(weather_data)
    @weather_data = weather_data
    @weather_data.register_observer(self)
    @max_temp = 0.0
    @min_temp = 200.0
    @temp_sum = 0.0
    @num_readings = 0
  end

  def update(temperature, _humidity, _pressure)
    @temp_sum += temperature
    @num_readings += 1

    @max_temp = temperature if temperature > @max_temp
    @min_temp = temperature if temperature < @min_temp

    display
  end

  def display
    avg = @temp_sum / @num_readings
    puts "Avg/Max/Min temperature = #{avg.round(1)}/#{@max_temp}/#{@min_temp}"
  end
end
