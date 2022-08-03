class Park
  attr_reader :name,
              :price,
              :vehicles,
              :passengers

  def initialize(name, price)
    @name = name
    @price = price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def charge(vehicle)
    vehicle.num_adults * @price
  end

  def revenue
    @vehicles.map{ |vehicle| charge(vehicle) }.sum
  end
end
