class Ingredient

    attr_reader :name, :dessert
    @@all = []
    
    def initialize(name, cal = 0)
        @name = name
        @cal = cal
        @dessert = dessert
        @@all << self
        
    end

    def self.all
        @@all
    end
    

end