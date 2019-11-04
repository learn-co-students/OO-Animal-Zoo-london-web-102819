require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


mickey = Animal.new('penguin', 'Mickey', 20)
pluto = Animal.new('penguin', 'Pluto', 22)
goofy = Animal.new('penguin', 'Goofy', 15)
jesus = Animal.new('penguin', 'Jesus', 35)

itchy = Animal.new('spider', 'Itchy', 0.5)
scratchy = Animal.new('spider', 'Scratchy', 0.3)
bitey = Animal.new('spider', 'Bitey', 0.6)
pinot = Animal.new('spider', 'Pinot Noir', 0.1)

zoo1 = Zoo.new('Zoooooo', 'London')
zoo2 = Zoo.new('Zabracadabroo', 'Manchester')

zoo1.intake([mickey, pluto, itchy, scratchy])
zoo2.intake([goofy, jesus, bitey, pinot])

binding.pry
puts "done"
