require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
london_zoo = Zoo.new("London Zoo", "London")
ny_zoo = Zoo.new("New York Zoo", "New York")

mufasa = london_zoo.get_animal("Lion", 210, "Mufasa")
simba = london_zoo.get_animal("Lion", 200, "Simba")
skhan = london_zoo.get_animal("Tiger", 250, "S-Khan")
jaws = london_zoo.get_animal("Shark", 1000, "Jaws")

nelly = ny_zoo.get_animal("Loch Ness Monster", 2000, "Nelly")
crocy = ny_zoo.get_animal("Crocodile", 500, "Crocy")


binding.pry
puts "done"
