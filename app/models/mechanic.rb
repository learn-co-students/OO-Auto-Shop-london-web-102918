class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |c|
      c.mechanic == self
    end
  end

  def car_owners
    cars.map do |c|
      c.car_owner
    end
  end

  def car_owner_names
    car_owners.map do |co|
      co.name
    end
  end

end
