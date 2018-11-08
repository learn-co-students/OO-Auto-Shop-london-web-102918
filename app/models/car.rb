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

  def self.classifications
    all.map do |c|
      c.classification
    end.uniq
  end

  def mechanics_specialty
    Mechanic.all.select do |m|
      m.specialty == self.classification
    end
  end

end
