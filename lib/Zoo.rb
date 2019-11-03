class Zoo

    attr_reader :name, :location
    attr_accessor :animal

@@all = []

    def initialize(name, location, animal)
        @name = name
        @location = location
        @animal = []
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.all
    @@all
    end

    def animal 
        Animails.all.select {|animal| animal.zoo == self}

    def animal_species
        animal.all.map {|species| animal.species}.uniq
    end

    def find_by_species(species)
        animal.all.select {|species| animal.species == species}
    end 

    def animal_nicknames
        animal.all.map {|nickname| animal.nickname}
    end

    def self.find_by_location(location)
        animal.all.select {|zoo.location == location}
    end


end
