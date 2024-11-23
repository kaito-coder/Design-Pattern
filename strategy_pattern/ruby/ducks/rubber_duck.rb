require_relative '../behaviors/fly_behavior'
require_relative '../behaviors/quack_behavior'
require_relative 'duck'

class RubberDuck < Duck
  def initialize
    super
    @fly_behavior = FlyBehavior::FlyNoWay.new
    @quack_behavior = QuackBehavior::Squeak.new
  end

  def display
    puts "I'm a rubber duckie"
  end
end
