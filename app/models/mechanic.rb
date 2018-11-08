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

  def cars_serviced
    Car.all.select{|c| c.mechanic == self}
  end

  def car_owners
    cars_serviced.map{|c| c.car_owner}.uniq
  end

  def car_owner_names
    car_owners.map{|co| co.name}
  end

end
