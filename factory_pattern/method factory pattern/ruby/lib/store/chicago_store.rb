require_relative '../pizza/chicago_style_pizza'
require_relative 'store'

class ChicagoPizzaStore < PizzaStore
  def create_pizza(type)
    case type
    when 'cheese'
      ChicagoStyleCheesePizza.new
    else
      raise NotImplementedError, 'Not implemented pizza type'
    end
  end
end
