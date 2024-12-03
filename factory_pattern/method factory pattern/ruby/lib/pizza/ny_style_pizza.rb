require_relative 'pizza'

class NYStyleCheesePizza < Pizza
  def initialize
    super
    @name = 'NY Style Sauce and Cheese Pizza'
    @dough = 'Thin Crust Dough'
    @sauce = 'Marinara Sauce'
    @toppings << 'Grated Reggiano Cheese'
  end
end

class NYStyleVeggiePizza < Pizza
  def initialize
    super
    @name = 'NY Style Veggie Pizza'
    @dough = 'Thin Crust Dough'
    @sauce = 'Marinara Sauce'
    @toppings << 'Grated Reggiano Cheese'
    @toppings << 'Fresh Vegetables'
  end
end
