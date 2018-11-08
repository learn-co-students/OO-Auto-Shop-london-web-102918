class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def owner_cars
    cars_by_owner = Car.all.select { |o| o.car_owner.name == self.name}
    cars_by_owner
  end

  def mechanics_by
    owner_cars.map { |o| o.mechanic }
  end

  def self.avg_amount_cars
    num_cars_owned = CarOwner.all.map {|o| o.owner_cars.length}
    num_cars_owned.inject(0) {|sum, el| sum + el}.to_f / num_cars_owned.length.to_f
    # avg_cars = Car.all.map { |o| }
    # avg_cars.length
    # avg_cars.inject(0) { |sum, el| sum + el }.to_f
  end

end
