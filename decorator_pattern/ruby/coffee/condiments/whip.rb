require_relative 'condiment_decorator'

class Whip < CondimentDecorator
  def description
    "#{@beverage.description}, Whip"
  end

  def cost
    @beverage.cost + 0.10
  end
end
