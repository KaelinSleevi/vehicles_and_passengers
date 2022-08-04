require './lib/passenger'
require './lib/vehicle'
require './lib/drive_in'
require 'rspec'

RSpec.describe DriveIn do
  before :each do
    @drive1 = DriveIn.new('Springs Drive In')
    @drive2 = DriveIn.new('Rocky Mountain Cinema')

    @vehicle1 = Vehicle.new("2001", "Honda", "Civic")
    @vehicle2 = Vehicle.new("2010", "Toyota", "Tacoma")

    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})

    @vehicle1.add_passenger(@charlie)
    @vehicle1.add_passenger(@taylor)
    @vehicle2.add_passenger(@jude)
  end

  it 'exists' do
    expect(@drive1).to be_an_instance_of(DriveIn)
    expect(@drive2).to be_an_instance_of(DriveIn)
  end

  it 'has a name' do
    expect(@drive1.name).to eq('Springs Drive In')
    expect(@drive2.name).to eq('Rocky Mountain Cinema')
  end

  it 'has no vehicles or passengers by default' do
    expect(@drive1.vehicles).to eq([])
    expect(@drive2.vehicles).to eq([])
  end

  it 'can have vehicles parked in the drive in' do
    @drive1.add_vehicle(@vehicle1)
    @drive2.add_vehicle(@vehicle2)
    expect(@drive1.vehicles).to eq([@vehicle1])
    expect(@drive2.vehicles).to eq([@vehicle2])
  end

  it 'can list all the passengers inside the vehicles' do
    @drive1.add_vehicle(@vehicle1)
    @drive2.add_vehicle(@vehicle2)
    expect(@drive1.passenger_info).to eq([@charlie, @taylor])
    expect(@drive2.passenger_info).to eq([@jude])
  end

  it 'can list all the passengers who are under 18' do
    @drive1.add_vehicle(@vehicle1)
    @drive2.add_vehicle(@vehicle2)
    expect(@drive1.passenger_underage).to eq([@taylor])
    expect(@drive2.passenger_underage).to eq([])
  end
end
