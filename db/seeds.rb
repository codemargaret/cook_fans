# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Piece.destroy_all

10.times do |index|
  Piece.create!(title: Faker::ChuckNorris.fact,
                artist: Faker::Name.unique.name,
                created: Faker::Date.birthday(18, 65),
                image: Faker::LoremPixel.image    )
end

p "Created #{Piece.count} pieces"
