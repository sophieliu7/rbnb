# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "initialize"
tool = ['scie', 'marteau', 'pioche', 'tondeuse', 'pinceaux', 'echelle']

puts "create users"
10.times do
  User.new(email: Faker::Internet.email , password: Faker::Color.hex_color).save!
end

puts "create tools"
20.times do
  Tool.new(name: tool[rand(0..5)],
    price_per_day: rand(00..100),
    place: Faker::Hobbit.location,
    description: Faker::PrincessBride.quote  ,
    user: User.last).save!
end


puts "finished"
