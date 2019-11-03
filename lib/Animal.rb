class Animal

    attr_accessor :weight, :zoo
    attr_reader :speces, :nickname

@@all = []

    def initialize (species, nickname, weight, zoo)
        @species = species
        @nickname = nickname
        @weight = weight
        @zoo = zoo
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.find_by_species(species)
        Animal.all.map {|animal| animal.species == species }




end
