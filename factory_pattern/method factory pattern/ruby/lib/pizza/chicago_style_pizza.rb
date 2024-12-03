class ChicagoStyleCheesePizza < Pizza
  def initialize
    super
    @name = 'Chicago Style Deep Dish Cheese Pizza'
    @dough = 'Extra Thick Crust Dough'
    @sauce = 'Plum Tomato Sauce'

    @toppings << 'Shredded Mozzarella Cheese'
  end

  def cut
    puts 'Cutting the pizza into square slices'
  end
end
