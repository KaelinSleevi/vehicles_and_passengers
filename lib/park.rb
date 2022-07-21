class Park
  attr_reader :name,
              :price,
              :vehicles,
              :passengers

  def initialize(name, price)
    @name = name
    @price = price
    @vehicles = []
    @passengers = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def adds_passenger
    vehicle.passengers.find_all do |passenger|
      @passengers << passenger
    end
  end
end
