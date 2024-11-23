class Duck
  attr_writer :fly_behavior, :quack_behavior

  def initialize
    @fly_behavior = nil
    @quack_behavior = nil
  end

  def perform_fly
    @fly_behavior&.fly
  end

  def perform_quack
    @quack_behavior&.quack
  end

  def swim
    puts 'All ducks float, even decoys!'
  end

  def display
    raise NotImplementedError, "#{self.class} must implement abstract method 'display'"
  end
end
