require 'faker'


25.times do
  Genre.create(
    name: Faker::Music.genre
  ).
end

80.times do
  Artist.create(
    name: Faker::Music.band,
    genre_id: Faker::Number.between(from: 1, to: 25)
  )
end

25.times do
  Venue.create(
    name:,
    postcode:,
    street_address:,
    url:,
  )
end



50.times do
  Event.create(
    name: Faker::Music.band,
    url: Faker::Internet.url,
    tarif: Faker::Number.decimal(l_digits: 2),
    date: Faker::Date.between(from: '2022-01-01', to: '2023-01-01'),
    venue_id: Faker::Number.between(from: 1, to: 25)
    artist_id: Faker::Number.between(from: 1, to: 80)
  )
end
