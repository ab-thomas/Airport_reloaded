class Plane

  attr_reader :name

  def initialize(name)
    @name = name
    @flying = true
  end

  def flying?
    @flying 
  end

  

end