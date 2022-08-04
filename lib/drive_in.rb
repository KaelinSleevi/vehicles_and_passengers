class DriveIn
  attr_reader :name,
              :vehicles

  def initialize(name)
    @name = name
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def passenger_info
    @vehicles.flat_map do |vehicle|
      vehicle.passengers.find_all do |passenger|
        passenger
      end
    end
  end

  def passenger_underage
    @vehicles.flat_map do |vehicle|
      vehicle.passengers.select do |passenger|
        passenger.adult? == false
      end
    end
  end
end
