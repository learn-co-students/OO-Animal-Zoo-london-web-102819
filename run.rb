require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


## Testing code for the ZOO ##

z1 = Zoo.new("london zoo", "London")
z2 = Zoo.new("Shanghai zoo", "Shanghai")
z3 = Zoo.new("New York zoo", "New York")


#(species, nickname, weight, location)
a1 = Animal.new("cat", "lucy", 3, z1)
a2 = Animal.new("dog", "sophie", 3, z2)
a3 = Animal.new("chicken", "jiji", 2, z1)
a4 = Animal.new("panda", "yuanyuan", 5, z2)
a5 = Animal.new("dog", "heizi", 6, z3)
a6 = Animal.new("cat", "meow", 3, z1)

binding.pry
puts "done"
