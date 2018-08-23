# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "je destroy les datas"
Reservation.destroy_all
Tool.destroy_all
User.destroy_all
puts "initialize"
tool = ['scie', 'marteau', 'pioche', 'tondeuse', 'pinceaux', 'echelle']
address =["46  rue Bonneterie, MONTBÉLIARD", "13 villa gaudelet, paris", "36 rue de la verrerie, Paris", "14 rue raymond losserand, paris", "2 rue de la république, brest"]


puts "create users"
users = []
10.times do
  user = User.new(email: Faker::Internet.email , password: Faker::Color.hex_color, name:Faker::FunnyName.name, address: address.sample)
  user.save!
  users << user

end

puts "create tools"
20.times do
  Tool.new(name: tool[rand(0..5)],
    price_per_day: rand(00..100),
    place: Faker::Hobbit.location,
    description: Faker::PrincessBride.quote,
    user: users[rand(0...10)],
    photo: 'https://picsum.photos/200/300/?random',
    ).save!
end


puts "finished"
