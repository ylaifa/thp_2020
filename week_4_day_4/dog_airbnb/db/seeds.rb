# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

15.times do 
    City.create(city_name: Faker::Address.city)
end

20.times do
    Dogsitter.create(name: Faker::Name.name, city_id: Faker::Number.between(from: 1, to: 15))
end

20.times do
    Dog.create(name: Faker::Creature::Dog.name, city_id: Faker::Number.between(from: 1, to: 15))
end

40.times do
    Stroll.create(dogsitter_id: Faker::Number.between(from: 1, to: 20), dog_id: Faker::Number.between(from: 1, to: 20))
end
