class Plane

  attr_reader :name

  def initialize(name)
    @name = name
    @flying = true
  end

  def flying?
    @flying 
  end

  def land
    raise "You have already landed!" if @flying == false
    @flying = false
  end

  def take_off
    raise "You have already taken off!" if @flying == true
    @flying = true
  end

  

end