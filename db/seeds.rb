# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning...'
Restaurant.destroy_all

puts 'Creating'
tanta = { name: 'Tanta', address: 'Lima 1', phone_number: '1234', category: 'french' }
pardos = { name: 'Pardos', address: 'Lima 2', phone_number: '5678', category: 'belgian' }
tusan = { name: 'Tusan', address: 'Lima 3', phone_number: '9123', category: 'chinese' }
cuatro = { name: 'Cuatro', address: 'Lima 4', phone_number: '4444', category: 'italian' }
katana = { name: 'Katana', address: 'Lince', phone_number: '5555', category: 'japanese' }

[tanta, pardos, tusan, cuatro, katana].each do |attributes|
  restaurant = Restaurant.create!(attributes)
end
puts 'Finished!'
