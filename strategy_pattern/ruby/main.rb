require_relative 'ducks/mallard_duck'
require_relative 'ducks/rubber_duck'
require_relative 'behaviors/fly_behavior'

if __FILE__ == $PROGRAM_NAME
  mallard = MallardDuck.new
  mallard.display
  mallard.perform_quack
  mallard.perform_fly

  puts "\nTesting RubberDuck:"
  rubber_duckie = RubberDuck.new
  rubber_duckie.display
  rubber_duckie.perform_quack
  rubber_duckie.perform_fly
  # Changing behavior at runtime
  puts "Changing model duck's flying behavior..."

  mallard.fly_behavior = FlyBehavior::FlyRocketPowered.new
  mallard.perform_fly

end
