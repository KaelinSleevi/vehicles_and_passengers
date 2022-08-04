# require './lib/passenger'
# require './lib/vehicle'
# require './lib/park'
# require 'rspec'
#
# RSpec.describe Park do
#   before :each do
#     @park1 = Park.new('Yosemite', 10.0)
#     @park2 = Park.new('Rocky Mountain', 15.0)
#
#     @vehicle1 = Vehicle.new("2001", "Honda", "Civic")
#     @vehicle2 = Vehicle.new("2010", "Toyota", "Tacoma")
#
#     @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
#     @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
#     @jude = Passenger.new({"name" => "Jude", "age" => 20})
#
#     @vehicle1.add_passenger(@charlie)
#     @vehicle1.add_passenger(@taylor)
#     @vehicle2.add_passenger(@jude)
#   end
#
#   it 'exists' do
#     expect(@park1).to be_an_instance_of(Park)
#     expect(@park2).to be_an_instance_of(Park)
#   end
#
#   it 'has no vehicles or passengers by default' do
#     expect(@park1.vehicles).to eq([])
#     expect(@park2.vehicles).to eq([])
#   end
#
#   it 'can add vehicles and passengers' do
#     @park1.add_vehicle(@vehicle1)
#     @park2.add_vehicle(@vehicle2)
#
#     expect(@park1.vehicles).to eq([@vehicle1])
#     expect(@park2.vehicles).to eq([@vehicle2])
#     expect(@vehicle1.passengers).to eq([@charlie, @taylor])
#     expect(@vehicle2.passengers).to eq([@jude])
#   end
#
#   it 'can charge and generate revenue for each park' do
#     @park1.add_vehicle(@vehicle1)
#     @park2.add_vehicle(@vehicle2)
#
#     @park1.charge(@vehicle1)
#     @park2.charge(@vehicle2)
#
#     expect(@park1.revenue).to eq(10.0)
#     expect(@park2.revenue).to eq(15.0)
#   end
# end
