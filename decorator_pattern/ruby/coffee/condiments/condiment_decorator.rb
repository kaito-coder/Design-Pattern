require_relative '../beverages/beverage'

class CondimentDecorator < Beverage
  def initialize(beverage)
    @beverage = beverage
    super()
  end

  def description
    @beverage.description
  end
end
