require_relative '../behaviors/fly_behavior'
require_relative '../behaviors/quack_behavior'
require_relative 'duck'

class MallardDuck < Duck
  def initialize
    super
    @fly_behavior = FlyBehavior::FlyWithWings.new
    @quack_behavior = QuackBehavior::Quack.new
  end

  def display
    puts "I'm a real Mallard duck"
  end
end
