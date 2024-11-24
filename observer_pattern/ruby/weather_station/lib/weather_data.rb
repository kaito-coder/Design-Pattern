require_relative 'subject'

class WeatherData
  include Subject
  attr_reader :temperature, :humidity, :pressure

  def set_measurements(temperature, humidity, pressure)
    @temperature = temperature
    @humidity = humidity
    @pressure = pressure
    measurements_changed
  end

  private

  def measurements_changed
    notify_observers
  end
end
