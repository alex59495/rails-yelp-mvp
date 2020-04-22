# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'pry-byebug'

(0..4).each do |x|
    name = Faker::Restaurant.name
    address = Faker::Address.street_address
    category = ['chinese', 'french', 'japanese', 'belgian', 'italian'].sample
    restaurant = Restaurant.create(name: name, address: address, category: category)
    # binding.pry
    restaurant.save
    puts "create #{restaurant.id} restaurant"
end
