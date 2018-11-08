class Car

  attr_reader :make, :model, :classification, :carowner, :mechanic

  @@all = []

  def initialize(make, model, classification, carowner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @carowner = carowner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.show
    Car.all.map {|clas| clas.classification}
  end

  def mechs
    Mechanic.all.select {|mec| mec.specialty == self.classification}
  end

end
