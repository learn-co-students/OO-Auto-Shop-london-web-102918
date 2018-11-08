require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Car Owners
hamilton =  CarOwner.new("Louis Hamilton")
drake = CarOwner.new("Drake")
leno = CarOwner.new("Jay Leno")
chris = CarOwner.new("Chris")

# Mechanics
joe_m = Mechanic.new("Joe", "antique")
steve_m = Mechanic.new("Steve", "exotic")
ron_m = Mechanic.new("Ron", "clunker")
mike_m = Mechanic.new("Mike", "exotic")

# Cars
ferrari = Car.new("Ferrari", "100", "exotic", hamilton, steve_m)
bmw = Car.new("BMW", "7", "clunker", leno, ron_m)
mercedes = Car.new("Mercedes", "S", "antique", drake, joe_m)
audi = Car.new("Audi", "A8", "antique", drake, joe_m)
fiat = Car.new("Fiat", "500", "exotic", leno, joe_m)

binding.pry
