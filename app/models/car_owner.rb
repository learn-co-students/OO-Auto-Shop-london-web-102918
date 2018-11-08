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

  def cars
    Car.all.select {|car| car.carowner == self}
  end

  def mechanics
    cars.map {|mechanix| mechanix.mechanic}
  end

  def self.total
    total = Car.all.map {|car| car.carowner}.length
    single = Car.all.map {|car| car.carowner}.uniq.length
    sum = (total / single).to_f
    sum
  end
end
