require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

require 'pry'


#Car Owners
bob = CarOwner.new("Bob")
dave = CarOwner.new("Dave")
fred = CarOwner.new("Fred")

#Mechanics
mike = Mechanic.new("Mike", "antique")
dan = Mechanic.new("Dan", "exotic")
phill = Mechanic.new("Phill", "clunker")

#Cars
car = Car.new("Car", "one", "antique", bob, mike)
ford = Car.new("Ford", "two", "clunker", dave, phill)
bmw = Car.new("BMW", "three", "exotic", fred, dan)
clio = Car.new("Clio", "four", "antique", dave, mike)

binding.pry
"Amazing"
