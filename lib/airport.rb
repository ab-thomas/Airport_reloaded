class Airport

  attr_reader :name, :capacity

  def initialize(name, default_capacity=100)
    @name = name
    @capacity = default_capacity
    @planes = []
  end

  def empty?
    @planes.count == 0
  end
  
  def receive(plane)
    @planes << plane
  end
 
  def planes_count
    @planes.count
  end



end