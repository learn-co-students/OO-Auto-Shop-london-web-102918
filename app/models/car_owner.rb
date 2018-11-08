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
    Car.all.select{|c| c.car_owner==self}
  end

  def mechanics
    cars.map{|c| c.mechanic}.map{|m| m.name}
  end

  def self.average_cars
    Car.all.count/CarOwner.all.count
  end
end
