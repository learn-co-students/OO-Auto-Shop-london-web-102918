class CarOwner

  attr_reader :o_name

  @@all = []

  def initialize(o_name)
    @o_name = o_name
    @@all << self
  end

  def self.all
    @@all
  end

  def all_cars
    Car.all.select {|c| c.o_name == self}
  end

  def all_mechanics
    all_cars.map {|c| c.m_name}
  end

  def self.average_cars
    average = CarOwner.all.map{|c| c.all_cars.length}

    average.inject(0){|sum, a| sum += a}.to_f / average.length.to_f
  end

end
