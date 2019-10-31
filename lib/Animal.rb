class Animal

    attr_accessor :weight, :zoo
    attr_reader :species, :nickname
    @@all = []

    def initialize(nickname, weight, species)
        @nickname = nickname
        @weight= weight
        @species = species
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species_name)
        @@all.select{|animal| animal.species == species_name}
    end
end


