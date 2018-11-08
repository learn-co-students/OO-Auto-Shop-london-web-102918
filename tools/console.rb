require_relative '../config/environment.rb'

bob = CarOwner.new("Bob")
jim = CarOwner.new("Jim")
carla = CarOwner.new("Carla")
gemma = CarOwner.new("Gemma")

frank = Mechanic.new("Frank", "antique")
chuck = Mechanic.new("Chuck", "sports")
bill = Mechanic.new("Bill", "sports")
wanda = Mechanic.new("Wanda", "exotic")

c1 = Car.new("Ford", "Fiesta", "antique", bob, frank)
c2 = Car.new("Ford", "GT", "sports", jim, chuck)
c3 = Car.new("Mazda", "R8", "sports", carla, bill)
c4 = Car.new("Mazda", "M5", "antique", gemma, frank)
c5 = Car.new("Custom", "Dragster", "exotic", jim, wanda)
c6 = Car.new("Custom", "Rally Car", "sports", bob, bill)
c7 = Car.new("Custom", "Muscle Car", "exotic", carla, wanda)


binding.pry
