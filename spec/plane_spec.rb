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
  end
 




  