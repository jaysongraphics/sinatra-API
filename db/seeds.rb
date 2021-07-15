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
alexander_gray = Gallery.create(
    gallery_name: "Alexander Gray Associates",
    date: "August 15, 2021",
    hours: "Tue–Sat 10am–6pm", 
    location: "510 West 26 Street, New York, NY 10001",
    description: "Located within throwing distance of the High Line, this Chelsea space opened in 2006, and showcases midcareer talents who first emerged during the 1970s, ’80s and ’90s. Among the artists who show there, you’ll find veterans such as Polly Apfelbaum, Joan Semmel and Luis Camnitzer.",
    image: "https://www.alexandergray.com/media/cache/resolve/1010x580_fit/594a3c935a4091cd008b4568/0ebe56726821b9a2695eefc2d6f09f4a.jpeg",
    website: "alexandergray.com"
)

fergus_mccaffrey = Gallery.create(
    gallery_name: "Fergus McCaffrey",
    date: "July 31, 2021",
    hours: "Monday–Friday, 10am–6pm",
    location: "514 West 26th Street, New York, NY 10001",
    description: "Founded in 2006, Fergus McCaffrey is internationally recognized for its groundbreaking role in promoting the work of post-war Japanese artists, as well as a quality roster of select contemporary European and American artists. Fergus McCaffrey has been instrumental in introducing post-war Japanese art to a Western market: Gutai artists Sadamasa Motonaga, Kazuo Shiraga and Toshio Yoshida; Hi-Red-Center members Jiro Takamatsu and Natsuyuki Nakanishi; and Noriyuki Haraguchi and Hitoshi Nomura from the Mono-Ha era. The gallery also exhibits the work of emerging and seminal Western artists, including Anna Conway, Jack Early, Marcia Hafif, Birgit Jürgenssen, Richard Nonas, Sigmar Polke, Carol Rama, William Scott, and Andy Warhol. Fergus McCaffrey, Tokyo opened in May of 2018.",
    image: "https://fergusmccaffrey.com/wp-content/uploads/fm-ny-exterior.png",
    website: "fergusmccaffrey.com"
)
paula_cooper = Gallery.create(
    gallery_name: "Paula Cooper Gallery",
    date: "July 9, 2021",
    hours: "Tue–Sat 10am–6pm", 
    location: "514 West 26th Street, New York, NY 10001",
    description: "Paula Cooper Gallery, the first art gallery in SoHo, opened in 1968 with an exhibition to benefit the Student Mobilization Committee to End the War in Vietnam. The show included works by Carl Andre, Dan Flavin, Donald Judd, Robert Mangold and Robert Ryman, among others, as well as Sol LeWitt’s first wall drawing. For over fifty years, the gallery’s artistic agenda has remained focused on, though not limited to, conceptual and minimal art. In 1996, the gallery moved to Chelsea to occupy an award-winning redesigned 19th century building. The architect was Richard Gluckman. In 1999, Paula Cooper opened a second exhibition space at 521 West 21st Street. In fall 2018, the gallery temporarily relocated its primary space to 524 West 26th Street, opening with a 50th anniversary exhibition that benefitted March For Our Lives.",
    image: "https://media.timeout.com/images/100122743/750/422/image.jpg",
    website: "paulacoopergallery.com"
)
marianne_b = Gallery.create(
    gallery_name: "Marianne Boesky Gallery",
    date: "August 6, 2021",
    hours: "Tue–Sat 10am–5:30pm",
    location: "509 W 24th St, New York, NY 10011",
    description: "Since its inception in 1996, Marianne Boesky Gallery’s mission has been to represent and support the work of contemporary international artists of all media. The gallery expanded its flagship location in 2016 to the adjacent space on West 24th Street. This space more than doubles the gallery's footprint in Chelsea, allowing for ever more ambitious solo and group shows that highlight dynamic narratives and parallels across artist, media, and theme. In 2017, the gallery opened its newest location in Aspen, CO. This space presents rotating exhibitions by both gallery artists and artists invited to present special projects. With three locations in New York and Aspen, Marianne Boesky Gallery currently represents 30 esteemed artists of different generations and backgrounds. These recent expansions highlight the gallery's ongoing experimentations with space and architecture as well as its continued commitment to the needs and interests of its dynamic roster of artists from around the globe.",
    image: "https://media.timeout.com/images/105160338/750/422/image.jpg",
    website: "https://marianneboeskygallery.com/"
)

minus = Gallery.create(
    gallery_name: "Minus Space",
    date: "July 31, 2021",
    hours: "Wednesday-Saturday 11am-5pm, by appointment",
    location: "16 Main Street, Suite A, Brooklyn, NY 11201 ",
    description: "It's rare to find a gallery that restricts its program to a particular genre, but that is what Minus Space has done since it opened in 2003. Dedicated to what it calls, 'reductive abstract art' this space located in the heart of Dumbo has presented an international roster of artists adhering to the idea that less is more with paintings that emphasize color, flatness and simplified form.",
    image: "https://media.timeout.com/images/105181118/750/422/image.jpg",
    website: "minusspace.com"
)

kustera = Gallery.create(
    gallery_name: "Kustera Projects",
    date: "August 6, 2021",
    hours: "Wed–Fri 11am-5pm; Sat noon–6pm", 
    location: "57 Wolcott St, Brooklyn, NY 11231 ",
    description: "A small storefront space with a big iconoclastic vision, Kustera Projects is run by namesake Anna Kustera, a long time dealer who got her start more than 20 year ago with a gallery in Soho. Over the decades Kustera's operation migrated first to Chelsea and then in 2015 to its current address in Red Hook.",
    image: "https://media.timeout.com/images/105181112/750/422/image.jpg",
    website: "kusteraprojects.com"
)

clearing = Gallery.create(
    gallery_name: "ClEARING",
    date: "July 9, 2021",
    hours: "Monday - Friday 11-6pm ",
    location: "396 Johnson Avenue, Brooklyn, NY, 11206",
    description: "This space with an all-caps name is the New York branch of a gallery in Brussels, Belgium, and like the home office, the Brooklyn shop focuses on contemporary art by an international roster of young emerging artists with up-to-the-minute sensibilities.",
    image: "https://media.timeout.com/images/103902802/750/422/image.jpg",
    website: "c-l-e-a-r-i-n-g.com"
)

theodore = Gallery.create(
    gallery_name: "Theodore:Art",
    date: "July 31, 2021",
    hours: " Thursday- Saturday 12-6 pm, by appointment", 
    location: "373 Broadway, 6th floor, room #F10, New York, NY 10013",
    description: "Founded by Stephanie Theodore in 2010, Theodore, a contemporary art gallery and consultancy, presenting exhibitions of works by emerging and established artists from the UK, EU and the US, in a variety of settings and contexts.  Theodore:Art offers a window of opportunity to discover promising artists early in their careers.",
    image: "https://media.timeout.com/images/105181177/750/422/image.jpg",
    website: "theodoreart.com"
)

bortolami = Gallery.create(
    gallery_name: "Bortolami Gallery",
    date: "July 30, 2021",
    hours: "Tue–Sat 10am–6pm", 
    location: "39 Walker St, New York, NY 10013",
    description: "This gallery, originally founded by Stefania Bortolami and Amalia Dayan two former directors at Gagosian opened in 2005 and represents a rooster of mid-career, contemporary artists.",
    image: "https://bortolamigallery.com/site/wp-content/uploads/2021/06/Green_Bortolami_TheUpstairs_2021-01-1-1600x1067.jpg",
    website: "bortolamigallery.com"
)

drawing = Gallery.create(
    gallery_name: "The Drawing Center",
    date: "September 19, 2021",
    hours: "Wed, Fri–Sun noon–6pm; Thu noon–8pm",
    location: "35 Wooster Street, New York, NY, 10013",
    description: "Founded in 1977 by Martha Beck (1938–2014), The Drawing Center—an exhibition space in downtown Manhattan's SoHo neighborhood—explores the medium of drawing as primary, dynamic, and relevant to contemporary culture, the future of art, and creative thought. Its activities are both multidisciplinary and broadly historical, and include exhibitions, publications, and educational and public programs.",
    image: "https://media.timeout.com/images/103834572/750/422/image.jpg",
    website: "drawingcenter.org"
)

# 10.times do
#     times = ["12:00pm - 7:00pm", "10:00am - 6:00pm", "9:30am - 5:30pm", "1:00pm - 8:00pm"].sample
#     # gallery_name = Faker::Hipster.word
#     # gallery_name2 = Faker::Books::Lovecraft.deity
#     gallery_name4 = Faker::Kpop.boy_bands
#     # date = Faker::Date.between(from: '2021-07-19', to: '2022-02-25')
#     date = Faker::Date.forward(days: 180)
#     location = Faker::Address.full_address
#     Gallery.create(

# end

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
image = ["https://bortolamigallery.com/site/wp-content/uploads/2014/09/RA8971-1-1050x1400.jpg", "https://bortolamigallery.com/site/wp-content/uploads/2014/09/RA4045-1016x1400.jpg", "https://bortolamigallery.com/site/wp-content/uploads/2014/09/MF8854-1-1600x1200.jpg", "https://bortolamigallery.com/site/wp-content/uploads/2014/09/MF4248-copy.jpg", "https://bortolamigallery.com/site/wp-content/uploads/2014/09/CP8789-1600x1206.jpg", "https://bortolamigallery.com/site/wp-content/uploads/2014/09/CP6745-snapshot-a-1600x1200.jpg", "https://bortolamigallery.com/site/wp-content/uploads/2019/03/MO8972-1-1050x1400.jpg", "https://bortolamigallery.com/site/wp-content/uploads/2019/03/Picture-of-Green_1995.jpg", "https://bortolamigallery.com/site/wp-content/uploads/2014/09/EW6906-a-1600x1064.jpg", "https://bortolamigallery.com/site/wp-content/uploads/2019/12/CAR_0788-HDR-scaled-1-1600x1067.jpg", "https://bortolamigallery.com/site/wp-content/uploads/2014/09/BS7730-2-933x1400.jpg", "https://bortolamigallery.com/site/wp-content/uploads/2014/09/BS7004-1048x1400.jpg", "https://bortolamigallery.com/site/wp-content/uploads/2014/09/PG0004_9039-935x1400.jpg"].sample

Painting.create(
    painting_name: painting_name7, 
    image: image,
    artist_name: artist_name,
    country: flag, 
    birthday: birthday,
    price: price,
    buyer_id: buyer_id, 
    # buyer_id: nil
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
        country: flag, 
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