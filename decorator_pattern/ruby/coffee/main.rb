require_relative 'beverages/dark_roast'
require_relative 'condiments/mocha'
require_relative 'condiments/whip'

# Create a dark roast with double mocha and whip
beverage = DarkRoast.new
beverage = Mocha.new(beverage)
beverage = Mocha.new(beverage)
beverage = Whip.new(beverage)

puts "Description: #{beverage.description}"
puts "Cost: $#{'%.2f' % beverage.cost}"
