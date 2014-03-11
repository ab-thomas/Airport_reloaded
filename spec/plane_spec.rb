require './lib/plane.rb'

  describe 'Plane' do

  context 'at initialization' do 

    it 'should have a name' do
      plane = Plane.new("Plane1")
      expect(plane.name).to eq("Plane1")
    end

    it 'should be flying' do
      plane = Plane.new("Plane1")
      expect(plane).to be_flying
    end

  end
  

  context 'at landing and takeoff' do
  
    it 'should be able to land' do
      plane = Plane.new("Plane1")
      plane.land
      expect(plane).not_to be_flying
    end

    it 'should be able to takeoff' do
      plane = Plane.new("Plane1")
      plane.land
      plane.take_off
      expect(plane).to be_flying
    end

    it 'should not be able to land after landing' do
      plane = Plane.new("Plane1")
      plane.land
      expect(plane).not_to be_flying
      expect{plane.land}.to raise_error(RuntimeError)
    end

     it 'should not be able to takeoff after taking off' do
      plane = Plane.new("Plane1")
      plane.land
      expect(plane).not_to be_flying
      plane.take_off
      expect(plane).to be_flying
      expect{plane.take_off}.to raise_error(RuntimeError)
    end

  end
 


  end