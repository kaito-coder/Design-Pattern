require_relative '../pizza/ny_style_pizza'
require_relative 'store'

class NYPizzaStore < PizzaStore
  def create_pizza(type)
    case type
    when 'cheese'
      NYStyleCheesePizza.new
    when 'veggie'
      NYStyleVeggiePizza.new
    else
      raise NotImplementedError, 'Not implemented pizza type'
    end
  end
end
