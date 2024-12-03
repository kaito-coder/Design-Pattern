require_relative 'lib/store/ny_store'
require_relative 'lib/store/chicago_store'

ny_store = NYPizzaStore.new
chicago_store = ChicagoPizzaStore.new

pizza = ny_store.order_pizza('cheese')
puts "Ethan ordered a #{pizza.name}\n\n"

pizza = chicago_store.order_pizza('cheese')
puts "Joel ordered a #{pizza.name}\n\n"
