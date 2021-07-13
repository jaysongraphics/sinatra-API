puts 'Clearing old data...'
Buyer.destroy_all
Buyer.reset_pk_sequence
Painting.destroy_all
Painting.reset_pk_sequence
Gallery.destroy_all
Gallery.reset_pk_sequence
Review.destroy_all
Review.reset_pk_sequence

puts '💰💰 Seeding buyers...💰💰'
15.times do
    name = Faker::FunnyName.two_word_name
    email = Faker::Internet.email
Buyer.create(
    name: name, 
    email: email
)
end

puts '🏛️ 🏛️ Seeding galleries...🏛️ 🏛️'
10.times do
    times = ["12:00pm - 7:00pm", "10:00am - 6:00pm", "9:30am - 5:30pm", "1:00pm - 8:00pm"].sample
    gallery_name = Faker::Hipster.word
    date = Faker::Date.between(from: '2021-07-19', to: '2022-02-25')
    location = Faker::Address.full_address
    Gallery.create(
    gallery_name: gallery_name, 
    date: date,
    time: times, 
    location: location
)
end

puts '❕❕ Seeding reviews...❕❕'
20.times do
comments = ["Beautiful gallery", "Loved it here", "Must visit", "Wide variety and great selection of paintings", "This gallery was horrible!", "Very organized..", "I wish I came sooner!"].sample
# comment = Faker::GreekPhilosophers.quote
# comment = Faker::Quotes::Shakespeare.as_you_like_it_quote
buyer_id = Buyer.ids.sample
gallery_id = Gallery.ids.sample
Review.create(
    comment: comments, 
    buyer_id: buyer_id, 
    gallery_id: gallery_id
)
end

puts '🎨🎨 Seeding paintings... 🎨🎨'
30.times do 
# price = number_with_delimiter(rand(50000..2000000), :delimiter => ",", :separator => ".")
price = rand(50000..2000000)
gallery_id = Gallery.ids.sample
buyer_id = Buyer.ids.sample
painting_name = Faker::Ancient.titan
artist_name = Faker::Artist.name
# flag = Faker::Nation.flag
Painting.create(
    painting_name: painting_name, 
    artist_name: artist_name, 
    price: price,
    buyer_id: buyer_id, 
    gallery_id: gallery_id
)
end

puts '💠 Paintings are in the Vault!! 💠'

# Faker::GreekPhilosophers
# Faker::Hipster.word
# Faker::Hacker.adjective
# Faker::Nation.flag
# Faker::ProgrammingLanguage.name
# Faker::Science.element_subcategory
# # Faker::Restaurant.name
# Faker::Quotes::Shakespeare.as_you_like_it_quote # => "Can one desire too much of a good thing?."
# # Random Super Mario character
# Faker::Games::SuperMario.character #=> "Luigi"
# # Random Super Mario game
# Faker::Games::SuperMario.game #=> "Super Mario Odyssey"
# # Random Super Mario location
# Faker::Games::SuperMario.location #=> "Kong City"
# Faker::TvShows::FamilyGuy.location #=> "James Woods High"
# Faker::Address.full_address #=> "282 Kevin Brook, Imogeneborough, CA 58517"