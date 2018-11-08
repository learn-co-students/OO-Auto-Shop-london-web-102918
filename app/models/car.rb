class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic
  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classification
    Car.all.map{|c| c.classification}
  end

  def specialist_mechanic
    Mechanic.all.select{|m| m.specialty == self.classification}
  end

end
