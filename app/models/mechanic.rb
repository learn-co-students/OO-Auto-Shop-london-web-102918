class Mechanic

  attr_reader :m_name, :specialty

  @@all = []

  def initialize(m_name, specialty)
    @m_name = m_name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def service_cars
    cars = Car.all.select {|c| c.m_name == self}
  end

  def all_owners
    service_cars.map {|c| c.o_name}
  end

  def car_owners
    all_owners.map {|o| o.o_name}
  end

end
