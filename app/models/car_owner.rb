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
    Car.all.select do |c|
      c.car_owner == self
    end
  end

  def mechanics
    cars.map do |c|
      c.mechanic
    end
  end

  def self.avg_cars
    Car.all.count.to_f / all.count
  end

end
