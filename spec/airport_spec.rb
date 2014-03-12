require './lib/airport'
require './lib/plane'

  describe 'Airport' do 

    let (:airport) { Airport.new("Heathrow") }

  context 'at initialization' do

    it 'should have a name' do
      expect(airport.name).to eq("Heathrow")
    end
    
    it 'should have a name' do
      airport2 = Airport.new("Luton")
      expect(airport2.name).to eq("Luton")
    end  

    it 'should have a default capacity' do
      expect(airport.capacity).to eq(100)
    end

    it 'should be empty' do
      expect(airport).to be_empty
    end 

  context 'control flow' do 

    it 'should receive a plane' do
      plane = Plane.new("Plane1")
      airport.receive(plane)
      expect(airport).not_to be_empty
    end

 










  end 

  end

  end