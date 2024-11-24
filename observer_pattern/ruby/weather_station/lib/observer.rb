module Observer
  def update(temperature, humidity, pressure)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
