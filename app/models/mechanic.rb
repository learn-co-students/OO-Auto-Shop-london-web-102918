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

def cars_by_mechanic
  mechanic_by_name = Car.all.select { |c| c.mechanic.name == self.name }

  mechanic_by_name.map { |m| m.make }
end

def cars_by_car_owner
  mechanic_by_name = Car.all.select { |c| c.mechanic.name == self.name }

  mechanic_by_name.map { |c| c.car_owner }.uniq
end

def cars_by_name
  mechanic_by_name = Car.all.select { |c| c.mechanic.name == self.name }

  mechanic_by_name.map { |c| c.car_owner.name }.uniq
end

end
