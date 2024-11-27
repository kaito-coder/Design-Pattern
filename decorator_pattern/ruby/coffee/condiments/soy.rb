require_relative 'condiment_decorator'

class Soy < CondimentDecorator
  def description
    "#{@beverage.description}, Soy"
  end

  def cost
    @beverage.cost + 0.15
  end
end
