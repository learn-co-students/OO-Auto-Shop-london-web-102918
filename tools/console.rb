require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("Deepika")
co2 = CarOwner.new("Katrina")
co3 = CarOwner.new("Anushka")

m1 = Mechanic.new("Rekha", "Antique" )
m2 = Mechanic.new("Dimple", "Exotic")
m3 = Mechanic.new("Madhuri", "Hybrid")
m4 = Mechanic.new("Sri Devi", "Hybrid")

c1 = Car.new("Jaguar", "Jag_Model", "Antique", co1, m1)
c2 = Car.new("Toyota", "Electra", "Hybrid", co2, m3)
c3 = Car.new("Honda", "Civic", "Hybrid", co3, m4)
c4 = Car.new("Ambassador", "Desi", "Antique", co1, m1)
c5 = Car.new("Fiat", "Flat", "Antique", co2, m1)
c6 = Car.new("VW", "Beetle", "Exotic", co3, m2)

binding.pry
