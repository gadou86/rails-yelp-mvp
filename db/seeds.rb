# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning up the Database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
category_array = %w(chinese italian japanese french belgian)
10.times do 
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    category: category_array.sample
    # rating: rand(1..5)
  )
  puts "restaurant #{restaurant.name} is created!"

end

puts 'Done!'