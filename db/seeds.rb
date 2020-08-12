# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

20.times {
  Flat.create!(
    name: Faker::Commerce.product_name,
    address: Faker::Address.full_address,
    description: Faker::Quote.famous_last_words,
    price_per_night: rand(35..200),
    number_of_guests: ["2","4","6","8"].sample
  )
}
