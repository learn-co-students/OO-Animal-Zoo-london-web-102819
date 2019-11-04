class Zoo

    attr_accessor :name, :location 

    @@all = []

    def initialize(name, location)
        @name = name 
        @location = location 
        @@all << self
    end 

    def location 
        @location 
    end 

    def name 
        @name 
    end 

    def self.all 
        @@all 
    end 

    def animals
        Animal.all.select { |animal| animal.zoo == self }
    end 

    def animal_species
        species = animals.map { |animal| animal.species }
        species.uniq
    end

    def find_by_species(species)
        animals.select { |animal| animal.species == species }
    end 

    def animal_nicknames
        animals.map { |animal| animal.nickname }
    end 

    def self.find_by_location(location)
        all.select { |zoo| zoo.location == location }
    end

    def get_animal(species, weight, nickname)
        new_animal = Animal.new(species, weight, nickname, self)
    end

end
