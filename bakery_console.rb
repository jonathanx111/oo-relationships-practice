require_relative './config/environment.rb'
require 'pry'
bakery1 = Bakery.new("bakery1")
bakery2 = Bakery.new("bakery2")
bakery3= Bakery.new("bakery3")
bakery4 = Bakery.new("bakery4")
bakery5 = Bakery.new("bakery5")
bakery6 = Bakery.new("bakery6")

dessert1 = Dessert.new("dessert1", bakery1)
dessert2 = Dessert.new("dessert2", bakery1)
dessert3 = Dessert.new("dessert3", bakery2)
dessert4 = Dessert.new("dessert4", bakery2)
dessert5 = Dessert.new("dessert5", bakery5)
dessert6 = Dessert.new("dessert6", bakery6)

ingredient1 = Ingredient.new("ingredient1", 200)
ingredient2 = Ingredient.new("ingredient2", 120)
ingredient3 = Ingredient.new("ingredient3", 400)
ingredient4 = Ingredient.new("ingredient4", 345)
ingredient5 = Ingredient.new("ingredient5", 657)
ingredient6 = Ingredient.new("ingredient6", 134)
ingredient7 = Ingredient.new("ingredient7", 534)


di1= DessertIngredient.new(dessert1, ingredient1)
di2= DessertIngredient.new(dessert2, ingredient1)
di3= DessertIngredient.new(dessert3, ingredient1)
di4= DessertIngredient.new(dessert4, ingredient1)
di5= DessertIngredient.new(dessert5, ingredient1)
di6= DessertIngredient.new(dessert1, ingredient2)
di7= DessertIngredient.new(dessert1, ingredient3)
di8= DessertIngredient.new(dessert1, ingredient4)
di9= DessertIngredient.new(dessert1, ingredient5)
di10= DessertIngredient.new(dessert1, ingredient6)
di11= DessertIngredient.new(dessert6, ingredient4)


binding.pry