class Car

  # attr_reader :make, :model
  attr_accessor :o_name, :m_name, :classification, :make, :model, :specialty

  @@all = []

  def initialize(make, model, classification, o_name, m_name)
    @make = make
    @model = model
    @classification = classification
    @o_name = o_name
    @m_name = m_name
    # @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def self.car_class
    Car.all.map {|c| c.classification}.uniq
  end

  def all_mechanics
    Mechanic.all.select{|m| m.specialty == self.classification}
  end

end
