module DisplayElement
  def display
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
