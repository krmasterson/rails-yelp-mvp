# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'french' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
the_bao = { name: 'The Bao', address: '13 St Marks Pl, New York, NY 10003', category: 'chinese' }
sushi_yasaka = { name: 'Sushi Yasaka', address: '251 W 72nd St, New York, NY 10023', category: 'japanese' }
bxl_zoute = { name: 'BXL Zoute', address: '50 W 22nd St, New York, NY 10010', category: 'belgian' }

[ dishoom, pizza_east, the_bao, sushi_yasaka, bxl_zoute ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
