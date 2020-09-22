require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

flour = Ingredient.new("flour")
sugar = Ingredient.new("sugar")
honey = Ingredient.new("honey")
cake = Dessert.new("cake")
bread = Dessert.new("bread")

 
cake_flour = DessertIngredient.new(cake, flour)
cake_honey = DessertIngredient.new(cake, honey)
cake_sugar = DessertIngredient.new(cake, sugar)
bread_flour = DessertIngredient.new(bread, flour)
bread_sugar = DessertIngredient.new(bread, sugar)


john_bakery = Bakery.new(bread)


binding.pry
