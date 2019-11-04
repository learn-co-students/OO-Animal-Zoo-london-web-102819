class Animal

    attr_reader :species, :nickname
    attr_accessor :weight

    @@all = []

    def initialize(species, nickname, weight)
        @species = species
        @nickname = nickname
        @weight = weight
        @@all << self
    end

    def self.all
        @@all
    end

    def zoo
        Zoo.all.select { |zoo| zoo.animals.include?(self) }
    end

    def self.find_by_species(species)
        a1 = Zoo.all.map { |zoo| zoo.animals }
        a2 = a1.flatten
        a2.select { |animal| animal.species == species }
    end

end
