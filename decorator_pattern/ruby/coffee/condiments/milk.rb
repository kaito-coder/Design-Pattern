require_relative 'condiment_decorator'

class Milk < CondimentDecorator
  def description
    "#{@beverage.description}, Milk"
  end

  def cost
    @beverage.cost + 0.10
  end
end
