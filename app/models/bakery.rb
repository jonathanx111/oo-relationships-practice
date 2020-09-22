class Bakery
attr_accessor :desserts
@@all = []
    
    def initialize(desserts)
        @desserts = desserts
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        DessertIngredient.all.each_with_object([]) {|bake, arry| arry << bake.ingredient if self.desserts == bake.dessert}
    end
        
            

    def shopping_list
    
    end
    


end