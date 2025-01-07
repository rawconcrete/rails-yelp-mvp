# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning ..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french", phone_number: "123-456-7890"}
pizza_east = {name: "Pizza-on-Tyne", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number: "123-456-7891"}
dragon_bowl = {name: "Dragon Men", address: "123 Peacock Ave, London", category: "chinese", phone_number: "123-456-7892"}
sushi_sam = {name: "Scooter's", address: "456 Japan St, London", category: "japanese", phone_number: "123-456-7893"}
waffle_house = {name: "Wiffle House", address: "789 Belgian Rd, London", category: "belgian", phone_number: "123-456-7894"}

[dishoom, pizza_east, dragon_bowl, sushi_sam, waffle_house].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}."
end

puts "Completed."
