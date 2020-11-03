class Ingredient
    attr_accessor :name, :calories
    @@all = []

    def initialize(name, calories)
        @name = name
        @calories = calories.to_f
        @@all << self
    end

    def self.all
        @@all
    end
    
    def di_instances
        DessertIngredient.all.select{|di| di.ingredient == self}
    end

    def dessert
       di_instances.map{|di| di.ingredient}
    end


    def bakeries
        di_instances.map{|di| di.dessert.bakery}.uniq
    end

    def self.find_all_by_name(ingredient)
        new = []
        DessertIngredient.all.each do |di|
            if di.ingredient.name.include?(ingredient)
                new << di.ingredient
            end
        end
        new.uniq
    end
end