# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'Faker'

puts "Generating Districts"
10.times do
    District.create(name: Faker::Games::ElderScrolls.city, district_type: "commercial")
end

puts "Generating Buildings"

35.times do
    Building.create(
        name: Faker::Hipster.words.join(" "), 
        owner: Faker::Books::Dune.character,
        leasee: Faker::Company.name,
        district_id: District.all.sample.id
    )
end

puts "done"