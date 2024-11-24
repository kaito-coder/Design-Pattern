module Subject
  def initialize
    @observers = []
  end

  def register_observer(observer)
    @observers << observer
  end

  def remove_observer(observer)
    @observers.delete(observer)
  end

  def notify_observers
    @observers.each do |observer|
      observer.update(@temperature, @humidity, @pressure)
    end
  end
end
