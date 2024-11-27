class Beverage
  def description
    'Unknown Beverage'
  end

  def cost
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
