class Pizza
  attr_reader :name, :dough, :sauce, :toppings

  def initialize
    @toppings = []
  end

  def prepare
    puts "Preparing #{@name}"
    puts 'Tossing dough...'
    puts 'Adding sauce...'
    puts 'Adding toppings:'
    @toppings.each { |topping| puts "  #{topping}" }
  end

  def bake
    puts 'Bake for 25 minutes at 350'
  end

  def cut
    puts 'Cutting the pizza into diagonal slices'
  end

  def box
    puts 'Place pizza in official PizzaStore box'
  end
end
