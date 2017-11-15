User.destroy_all
Piece.destroy_all

1.times do |index|
  user = User.create!(name: Faker::Name.unique.name)

  10.times do |index|
    Piece.create!(title: Faker::ChuckNorris.fact,
                  artist: Faker::Name.unique.name,
                  created: Faker::Date.birthday(18, 65),
                  image: Faker::LoremPixel.image,
                  user_id: user.id   )
  end
  p "Created #{Piece.count} pieces"
end

p "Created #{User.count} users"
