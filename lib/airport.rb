class Airport

  attr_reader :name, :capacity

  def initialize(name, default_capacity=100)
    @name = name
    @capacity = default_capacity
  end

  def empty?
    true
  end
 
end