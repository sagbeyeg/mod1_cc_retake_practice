# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

bob = RestaurantOwner.new("Bob", 30)
sisi = RestaurantOwner.new("Sisi", 21)

nyc = Restaurant.new(bob, "NYC", 3)
la = Restaurant.new(sisi, "LA", 5)

cake = Recipe.new("Cake", "Moist Red Velvet Cake")
jollof = Recipe.new("Jollof Rice", "A Spicy Nigerian Staple")
pie = Recipe.new("Pie", "Pecan Pie")

nyc_cake = MenuItem.new(nyc, cake, 14)
la_cake = MenuItem.new(la, cake, 10)
la_jollof = MenuItem.new(la, jollof, 14)
nyc_jollof = MenuItem.new(nyc, jollof, 24)

puts "\nInitializers, Readers, and Writers \n\n"

# puts "There should be 2 restaurant owners, #{RestaurantOwner.all.count}"
# puts "There should be 2 restaurants, #{Restaurant.all.count}"
# puts "There should be 2 recipes, #{Recipe.all.count}"
# puts "There should be 2 menu items, #{MenuItem.all.count}"


puts "\nObject Relationship Methods \n\n"
# puts "The menu items for cake is/are #{cake.menu_items}"
# puts "These restaurant(s) have cake as a menu item #{cake.restaurants}"

# puts "The menu item(s) for nyc is/are #{nyc.menu_items}"
# puts "nyc is associated with this owner #{nyc.owner}"
# puts "The recipe(s) for nyc is/are #{nyc.recipes}"

puts "The restaurants owned by Sisi is/are #{sisi.restaurants}"
puts "The menu_items for Sisi retaurants is/are #{sisi.menu_items}"

puts "The recipe for nyc jollof is #{nyc_jollof.recipe.name}"
puts "The restaurant of nyc jollof is #{nyc_jollof.restaurant.name}"
puts "The owner of nyc jollof is #{nyc_jollof.owner.name}"

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
