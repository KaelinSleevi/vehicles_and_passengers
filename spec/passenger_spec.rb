require './lib/passenger'
require 'rspec'

RSpec.describe Passenger do
  context 'Iteration 1' do
    it 'Passengers exist' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie).to be_an_instance_of(Passenger)
      expect(taylor).to be_an_instance_of(Passenger)
    end

    it 'Passengers have names' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie.name).to eq("Charlie")
      expect(charlie.age).to eq(18)
      expect(taylor.name).to eq("Taylor")
      expect(taylor.age).to eq(12)
    end

    it 'Passengers can or can not be an adult' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie.adult?).to eq(true)
      expect(taylor.adult?).to eq(false)
    end

    it 'Passengers do not drive by default' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie.driver?).to eq(false)
    end

    it 'Passenger can drive' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      charlie.drive
      expect(charlie.driver?).to eq(true)
    end
  end
end
