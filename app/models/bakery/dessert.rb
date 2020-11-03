class Dessert
    attr_accessor :name
    attr_reader :bakery
    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        DessertIngredient.all.select{|di| di.dessert == self}.map{|di| di.ingredient}
    end


    def calories
        self.ingredients.map{|i| i.calories}.sum
    end


end