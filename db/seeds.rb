# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

chez_baba = {name: "Chez Baba", address: "7 rue boris", phone_number: "0787678700", category: "french"}
chez_lucas = {name: "Chez Lucas", address: "8 rue Landis", phone_number: "0787678600", category: "japanese"}
morisetbaris = {name: "Moris & Baris", address: "10 avenue champ", phone_number: "0636678700", category: "italian"}
quick = {name: "Quick", address: "7 rue yucka", phone_number: "0987678700", category: "belgian"}
pizzamorito = {name: "Pizza Morito", address: "7 rue masco", phone_number: "0867587098", category: "chinese"}

[chez_baba, chez_lucas, morisetbaris, quick, pizzamorito].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
