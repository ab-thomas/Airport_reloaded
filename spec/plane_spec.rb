require './lib/plane.rb'

  describe 'Plane' do

    let(:plane) { Plane.new("Plane1") }

  context 'at initialization' do 

    it 'should have a name' do
      expect(plane.name).to eq("Plane1")
    end

    it 'should be flying' do
      expect(plane).to be_flying
    end

  end
  
  context 'at landing and takeoff' do
  
    it 'should be able to land' do
      plane.land
      expect(plane).not_to be_flying
    end

    it 'should be able to takeoff' do
      plane.land
      plane.take_off
      expect(plane).to be_flying
    end

    it 'should not be able to land after landing' do
      plane.land
      expect{plane.land}.to raise_error(RuntimeError)
    end

     it 'should not be able to takeoff after taking off' do
      plane.land
      plane.take_off
      expect{plane.take_off}.to raise_error(RuntimeError)
    end

  end
  
  end