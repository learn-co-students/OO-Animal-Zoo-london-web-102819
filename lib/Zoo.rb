class Zoo
  attr_reader :name, :location

  @@all = []
  def initialize(name,location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  #animals should return all the animals that a specific instance of a zoo has.
  def animals
    Animal.all.select {|a| a.zoo == self}
  end

  #should return an array of all the species (as strings) of the animals in the zoo. However, 
  #if you have two dogs, it should only return one "Dog" string (aka an unique array).
  def animal_species
    animals.map {|a| a.species}.uniq
  end

  def animal_nicknames
    animals.map {|a| a.nickname}
  end

  def self.find_by_location(location_lookup)
    Zoo.all.select {|z| z.location == location_lookup}
  end

end


#animal_species 
#find_by_species should take in an animal's species as an argument and return an array of all the animals in that zoo, which are of that species.
#animal_nicknames should return an array of all the nicknames of animals that a specific instance of a zoo has.
#Zoo.find_by_location should take in a location as an argument and return an array of all the zoos within that location.