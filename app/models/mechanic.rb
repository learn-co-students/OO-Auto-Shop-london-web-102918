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

  def carss
  Car.all.select{|x| x.mechanic == self}
  end

  def carown
    carss.map {|x| x.carowner}
  end

  def car_owners
    carown.map {|x| x.name}
  end
  
end

