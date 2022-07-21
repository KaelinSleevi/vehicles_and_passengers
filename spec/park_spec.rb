require './lib/passenger'
require './lib/vehicle'
require './lib/park'
require 'rspec'

RSpec.describe Park do
  context 'Iteration 3' do
      it 'Parks exists' do
        park1 = Park.new('Yosemite', 10.0)
        park2 = Park.new('Rocky Mountain', 15.0)

        expect(park1).to be_an_instance_of(Park)
        expect(park2).to be_an_instance_of(Park)
      end

      it 'Parks has a name' do
        park1 = Park.new('Yosemite', 10.0)
        park2 = Park.new('Rocky Mountain', 15.0)

        expect(park1.name).to eq('Yosemite')
        expect(park2.name).to eq('Rocky Mountain')
      end

      it 'Parks have an admissions price' do
        park1 = Park.new('Yosemite', 10.0)
        park2 = Park.new('Rocky Mountain', 15.0)

        expect(park1.price).to eq(10.0)
        expect(park2.price).to eq(15.0)
      end

      it 'Parks has no vehicles by default' do
        park1 = Park.new('Yosemite', 10.0)
        park2 = Park.new('Rocky Mountain', 15.0)

        expect(park1.vehicles).to eq([])
        expect(park2.vehicles).to eq([])
      end

      it 'Parks can have vehicles enter' do
        park1 = Park.new('Yosemite', 10.0)
        park2 = Park.new('Rocky Mountain', 15.0)

        vehicle1 = Vehicle.new("2001", "Honda", "Civic")
        vehicle2 = Vehicle.new("2010", "Toyota", "Tacoma")
        vehicle3 = Vehicle.new("2008", "Honda", "Accord")
        vehicle4 = Vehicle.new("2022", "Ford", "Bronco")

        park1.add_vehicle(vehicle1)
        park1.add_vehicle(vehicle2)
        park2.add_vehicle(vehicle3)
        park2.add_vehicle(vehicle4)

        expect(park1.vehicles).to eq([vehicle1, vehicle2])
        expect(park2.vehicles).to eq([vehicle3, vehicle4])
      end


      it 'Park vehicles can have passengers' do
        park1 = Park.new('Yosemite', 10.0)
        park2 = Park.new('Rocky Mountain', 15.0)

        vehicle1 = Vehicle.new("2001", "Honda", "Civic")
        vehicle2 = Vehicle.new("2010", "Toyota", "Tacoma")
        vehicle3 = Vehicle.new("2008", "Honda", "Accord")
        vehicle4 = Vehicle.new("2022", "Ford", "Bronco")

        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        greg = Passenger.new({"name" => "Greg", "age" => 16})
        jude = Passenger.new({"name" => "Jude", "age" => 20})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})


        park1.add_vehicle(vehicle1)
        park1.add_vehicle(vehicle2)
        park2.add_vehicle(vehicle3)
        park2.add_vehicle(vehicle4)

        park1.vehicles.adds_passenger(charlie)
        park1.vehicles.adds_passenger(greg)
        park2.vehicles.adds_passenger(jude)
        park2.vehicles.adds_passenger(taylor)

        expect(park1.vehicles.passengers).to eq([charlie, greg])
        expect(park2.vehicles.passengers).to eq([jude, taylor])
      end
   end
end
