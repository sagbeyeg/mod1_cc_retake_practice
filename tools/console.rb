# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

bob = RestaurantOwner.new("Bob", 30)
sisi = RestaurantOwner.new("Sisi", 21)

nyc = Restaurant.new(bob, "NYC", 5)
la = Restaurant.new(sisi, "LA", 5)

cake = Recipe.new("Cake", "Moist Red Velvet Cake")
jollof = Recipe.new("Jollof Rice", "A Spicy Nigerian Staple")

rv_cake = MenuItem.new(nyc, cake, 10)
n_jollof = MenuItem.new(la, jollof, 15)

puts "\nInitializers, Readers, and Writers \n\n"

puts "There should be 2 restaurant owners, #{RestaurantOwner.all.count}"
puts "There should be 2 restaurants, #{Restaurant.all.count}"
puts "There should be 2 recipes, #{Recipe.all.count}"
puts "There should be 2 menu items, #{MenuItem.all.count}"
# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
