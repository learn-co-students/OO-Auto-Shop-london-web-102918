require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

mayowa = CarOwner.new('Mayowa')
bobby = CarOwner.new('Bobby')
cherrie = CarOwner.new('Cherrie')

jack = Mechanic.new('Jack', 'bread')
julio = Mechanic.new('Julio', 'digestives')
pierre = Mechanic.new('Pierre', 'oats')

ferrari = Car.new('FR', 'new', 'bread', mayowa, jack)
lamborghini = Car.new('LG', 'old', 'bread', bobby, jack)
golf = Car.new('GF', 'new', 'digestives', cherrie, julio)
pixel = Car.new('PX', 'new', 'oats', mayowa, pierre)
hurricane = Car.new('HC', 'old', 'oats', bobby, pierre)

binding.pry


