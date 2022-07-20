class Vehicle
  attr_reader :year,
              :make,
              :model,
              :passengers

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speeder = false
    @passengers = []
  end

  def speeding?
    @speeder
  end

  def speed
    @speeder = true
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def num_adults
    passengers.find_all do |passenger|
      passenger.adult?
    end.count
  end
end
