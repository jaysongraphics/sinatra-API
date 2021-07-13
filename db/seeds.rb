puts 'Clearing old data...'
Buyer.destroy_all
Buyer.reset_pk_sequence
Painting.destroy_all
Painting.reset_pk_sequence
Gallery.destroy_all
Gallery.reset_pk_sequence
Review.destroy_all
Review.reset_pk_sequence

puts '💰 Seeding buyers...💰'
15.times do
    name = Faker::FunnyName.two_word_name
    email = Faker::Internet.email
Buyer.create(
    name: name, 
    email: email
)
end

puts '🏛️ Seeding galleries...🏛️'
10.times do
    times = ["12:00pm - 7:00pm", "10:00am - 6:00pm", "9:30am - 5:30pm", "1:00pm - 8:00pm"].sample
    # gallery_name = Faker::Hipster.word
    # gallery_name2 = Faker::Books::Lovecraft.deity
    gallery_name4 = Faker::Kpop.boy_bands
    date = Faker::Date.between(from: '2021-07-19', to: '2022-02-25')
    location = Faker::Address.full_address
    Gallery.create(
    gallery_name: gallery_name4, 
    date: date,
    time: times, 
    location: location
)
end

puts '❕Seeding reviews...❕'
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

puts '🎨 Seeding paintings...🎨'
10.times do 
# price = number_with_delimiter(rand(50000..2000000), :delimiter => ",", :separator => ".")
price = rand(50000..2000000)
gallery_id = Gallery.ids.sample
buyer_id = Buyer.ids.sample
painting_name = Faker::Ancient.titan
artist_name = Faker::Artist.name
flag = Faker::Nation.flag
painting_name2 = Faker::Cosmere.knight_radiant
painting_name7 = Faker::Games::Dota.item
painting_name4 = Faker::Games::Myst.character
birthday = Faker::Date.birthday(min_age: 23, max_age: 65)

Painting.create(
    painting_name: painting_name7, 
    image: 'https://d32dm0rphc51dk.cloudfront.net/6b4QduWxeA1kSnrifgm2Zw/medium.jpg',
    artist_name: artist_name,
    country_birth: flag, 
    birthday: birthday,
    price: price,
    buyer_id: buyer_id, 
    gallery_id: gallery_id
)
end

10.times do 
    price = rand(50000..2000000)
    gallery_id = Gallery.ids.sample
    buyer_id = Buyer.ids.sample
    painting_name = Faker::Ancient.titan
    painting_name3 = Faker::Cosmere.feruchemist 
    artist_name = Faker::Artist.name
    flag = Faker::Nation.flag
    birthday = Faker::Date.birthday(min_age: 23, max_age: 65)
    Painting.create(
        painting_name: painting_name3, 
        image: 'https://d32dm0rphc51dk.cloudfront.net/6b4QduWxeA1kSnrifgm2Zw/medium.jpg',
        artist_name: artist_name, 
        country_birth: flag, 
        birthday: birthday,
        price: price,
        buyer_id: nil, 
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
# Faker::Address.country #=> "French Guiana"
# Faker::Business.credit_card_type #=> "visa"
# Faker::BossaNova.artist #=> "Tom Jobin"
# Faker::Cosmere.feruchemist 
# Faker::Cosmere.knight_radiant  
# Faker::Construction.standard_cost_code #=> "1-000 - Purpose"
# Faker::Date.birthday(min_age: 18, max_age: 65) #=> "Mar, 28 Mar 1986"
Faker::Markdown.headers #=> "##### Autem"
Faker::Kpop.boy_bands # boy bands =>  "Exo"
Faker::Mountain.range #=> "Dhaulagiri Himalaya"
Faker::SouthAfrica.phone_number #=> "010 788 5009"
Faker::Books::Lovecraft.word #=> "furtive"
Faker::Books::Lovecraft.deity #=> "Shub-Niggurath"
Faker::Games::Myst.character #=> "Gehn"
Faker::Games::Dota.item #=> "Armlet of Mordiggian"