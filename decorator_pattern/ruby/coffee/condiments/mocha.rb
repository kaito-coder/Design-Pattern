require_relative 'condiment_decorator'

class Mocha < CondimentDecorator
  def description
    "#{@beverage.description}, Mocha"
  end

  def cost
    @beverage.cost + 0.20
  end
end

