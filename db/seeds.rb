require 'faker'

50.times do
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
    image: Faker::LoremFlickr.image(size: "50x60", search_terms: ['band']),
    genre_id: Faker::Number.between(from: 1, to: 15)
  )
end

10.times do
  Event.create(
    url: Faker::Internet.url,
    tarif:Faker::Number.decimal(l_digits: 2),
    date: Faker::Date.between(from: '2022-08-01', to: '2022-12-30'),
    venue_id: Faker::Number.between(from: 1, to: 25),
    artist_id: Faker::Number.between(from: 1, to: 25),
  )
end
