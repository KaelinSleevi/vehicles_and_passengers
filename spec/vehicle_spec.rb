require './lib/passenger'
require './lib/vehicle'
require 'rspec'

RSpec.describe Vehicle do
  context 'Iteration 2' do
    it 'Vehicle exists' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle).to be_an_instance_of(Vehicle)
    end

    it 'Vehicle has a year, make, model' do
       vehicle = Vehicle.new("2001", "Honda", "Civic")

       expect(vehicle.year).to eq("2001")
       expect(vehicle.make).to eq("Honda")
       expect(vehicle.model).to eq("Civic")
     end

     it 'Vehicle does not speed by default' do
       vehicle = Vehicle.new("2001", "Honda", "Civic")

       expect(vehicle.speeding?).to eq(false)
     end

     it 'Vehicle can speed' do
       vehicle = Vehicle.new("2001", "Honda", "Civic")

       vehicle.speed
       expect(vehicle.speeding?).to eq(true)
     end

     it 'Vehicle has no passengers by default' do
       vehicle = Vehicle.new("2001", "Honda", "Civic")

       expect(vehicle.passengers).to eq([])
     end

     it 'Vehicle can add passengers' do
       vehicle = Vehicle.new("2001", "Honda", "Civic")
       charlie = Passenger.new({"name" => "Charlie", "age" => 18})
       jude = Passenger.new({"name" => "Jude", "age" => 20})
       taylor = Passenger.new({"name" => "Taylor", "age" => 12})

       vehicle.add_passenger(charlie)
       vehicle.add_passenger(jude)
       vehicle.add_passenger(taylor)

       expect(vehicle.passengers).to eq([charlie, jude, taylor])
     end

     it 'Vehicle can has a certain number of adults' do
       vehicle = Vehicle.new("2001", "Honda", "Civic")
       charlie = Passenger.new({"name" => "Charlie", "age" => 18})
       jude = Passenger.new({"name" => "Jude", "age" => 20})
       taylor = Passenger.new({"name" => "Taylor", "age" => 12})

       vehicle.add_passenger(charlie)
       vehicle.add_passenger(jude)
       vehicle.add_passenger(taylor)

       expect(vehicle.num_adults).to eq(2)
     end
  end
end
