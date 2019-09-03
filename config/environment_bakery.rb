require 'bundler/setup'
require 'pry'
Bundler.require
require_all 'app'

#SEED DATA

b1 = Bakery.new("Donught Time")
b2 = Bakery.new("Tim Hortons")
b3 = Bakery.new("Patiserie Valerie")

d1 = Dessert.new("Donught", b1)
d2 = Dessert.new("Cookie", b2)
d3 = Dessert.new("Cake", b3)
d4 = Dessert.new("Crumpet", b1)

i1 = Ingredient.new("Flour", 100, d1)
i2 = Ingredient.new("Sugar", 150, d2)
i3 = Ingredient.new("Baking Soda", 10, d3)
i4 = Ingredient.new("Egg", 75, d4)
i5 = Ingredient.new("Vanilla", 2, d1)
i6 = Ingredient.new("Yeast", 5, d2)
i7 = Ingredient.new("Oatmeal", 100, d2)

binding.pry
'save'