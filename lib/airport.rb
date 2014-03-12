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
    plane.land
    @planes << plane
  end
 
  def planes_count
    @planes.count
  end

  def release(plane)
    @planes.delete(plane)
  end

  def full?
    @planes = @capacity
  end

end