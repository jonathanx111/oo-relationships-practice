require 'pry'
class Bakery
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        self.desserts.map{|d| d.ingredients}.flatten
    end

    def desserts
        Dessert.all.select{|d| d.bakery == self}
    end
    
    def average_calories
        self.desserts.map{|d| d.calories}.sum/self.desserts.length
    end

    def shopping_list
        self.ingredients.map{|i| i.name}.uniq
    end
end