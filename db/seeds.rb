# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants = [
  { name: 'Chez Luigi', address: '10 rue de Rome, Paris', phone_number: '01 23 45 67 89', category: 'italian' },
  { name: 'Sakura', address: '5 avenue des Champs, Paris', phone_number: '01 98 76 54 32', category: 'japanese' },
  { name: 'Le Gourmet', address: '88 boulevard Haussmann, Paris', phone_number: '01 55 44 33 22', category: 'french' },
  { name: 'Wok Express', address: '12 rue du Faubourg, Lyon', phone_number: '04 67 89 01 23', category: 'chinese' },
  { name: 'Belgian Delight', address: '7 place Royale, Bruxelles', phone_number: '02 34 56 78 90', category: 'belgian' }
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
