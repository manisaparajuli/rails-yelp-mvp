# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# puts "Cleaning database..."
# Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: 'melbourne', phone_number: '0022244', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: 'London E1 6PQ', phone_number: '666444', category: 'italian' }
kfc = { name: 'KFC', address: 'Sydney', phone_number: '0000000', category: 'japanese' }
ragusa = { name: 'Ragusa', address: 'Williamstown', phone_number: '8888', category: 'french' }
cherry_beans = {name: 'Cherry Beans', address: "Glenroy", phone_number: '1111111', category: 'belgian'}

[dishoom, pizza_east, kfc, ragusa, cherry_beans].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
