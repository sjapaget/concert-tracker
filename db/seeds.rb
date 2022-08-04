require 'faker'

25.times do
  Genre.create(
    name: Faker::Music.genre
  )
end

25.times do
  Venue.create(
    name: "#{Faker::Address.city} #{Faker::Creature::Animal.name}",
    postcode: Faker::Number.between(from: 75001, to: 75020),
    street_address: Faker::Address.street_address,
    url: Faker::Internet.url,
    image: Faker::LoremFlickr.image(size: "50x60", search_terms: ['music'])
  )
end

25.times do
  Artist.create(
    name: Faker::Music.band,
  )
end
