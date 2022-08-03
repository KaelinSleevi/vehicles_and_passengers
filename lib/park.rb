class Park
  attr_reader :name,
              :price,
              :vehicles,
              :passengers,
              :charged

  def initialize(name, price)
    @name = name
    @price = price
    @vehicles = []
    @charged = 0
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def charge(vehicle)
   @vehicles.each do |vehicle|
      vehicle.num_adults * @price
    end
  end

  def revenue
    @charged
  end
end
