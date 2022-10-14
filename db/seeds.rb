puts "Seeding - START"

Category.destroy_all
Photo.destroy_all

puts "Seeding Categories"

animals = Category.create(name: "Animals", description: "Beautiful animals is their nature")
animals.cover.attach(io: File.open('db/images/category5.png'), filename: 'category5.png')
scenarios = Category.create(name: "Scenarios", description: "Incredible beautiful landscapes")
scenarios.cover.attach(io: File.open('db/images/category2.png'), filename: 'category2.png')
foot = Category.create(name: "Foots", description: "Food for the tummy")
foot.cover.attach(io: File.open('db/images/category4.png'), filename: 'category4.png')
people = Category.create(name: "People", description: "People from all over the world")
people.cover.attach(io: File.open('db/images/category3.png'), filename: 'category3.png')
technologies = Category.create(name: "Technologies", description: "The wonderful magic of technology")
technologies.cover.attach(io: File.open('db/images/category1.png'), filename: 'category1.png')
categories = [animals, scenarios, foot, people, technologies]

puts "Seeding Photos"
photos = []
photos.push(Photo.create(title: "Purple Lake",description: "Let’s celebrate the magic of Mother Earth — with images of everything our planet has to offer.", category: scenarios))
photos.push(Photo.create(title: "A cute little orange bird", description: "This little bird needs to mate...", category: animals ))
photos.push(Photo.create(title: "A cat on the street", description: "Corduroy Miguel is corduroy Miguel", category: animals ))
photos.push(Photo.create(title: "furry bears", description: "for the oldest", category: animals ))
photos.push(Photo.create(title: "The tigress of the east", description: "A new dawn has come, With La Tigresa del Oriente, That! Rico, daddy, sing and enchant your people, tigress", category: animals ))
photos.push(Photo.create(title: "Black Keyboard Switches", description: "For you to make your ASMR keyboard videos and earn your good visits papu", category: technologies ))
photos.push(Photo.create(title: "Virtual Glasses", description: "Recent Innovation in Virtual Reality technologies", category: technologies ))
photos.push(Photo.create(title: "PS5 Controller", description: "The DualSense controller is a vibration feedback video game controller with analog controls developed by Sony Interactive Entertainment for the PlayStation 5. It is the successor to the traditional DualShock controllers.", category: technologies ))
photos.push(Photo.create(title: "Electric Scooter", description: "An electric scooter is a vehicle with two wheels (sometimes three), between which there is a platform that serves to support the driver.", category: technologies ))
photos.push(Photo.create(title: "A small Drone", description: "An unmanned aerial vehicle, commonly known as a drone, is an unmanned vehicle capable of autonomously maintaining a controlled and sustained level of flight.", category: technologies ))
photos.push(Photo.create(title: "Yucca", description: "Manihot esculenta, commonly called yucca, cassava, aipim, guacamota, cassava, cassava or lumu, is a perennial shrub of the euphorbiaceae family widely cultivated in America, Africa and Oceania for its roots with starches of high food value.", category: foot ))
photos.push(Photo.create(title: "Grapes", description: "The grape is the common denomination given to the fruits formed in the clusters of the vine. It is used worldwide for its fermentation, since it gives rise to wine.", category: foot ))
photos.push(Photo.create(title: "A jalapeno pepper", description: "The jalapeño chili —so called due to its traditional production center: the Mexican city of Xalapa, in the state of Veracruz", category: foot ))
photos.push(Photo.create(title: "Assorted Vegetables", description: "Vegetables are very good for the body, they keep you healthy and healthy.", category: foot ))
photos.push(Photo.create(title: "Robert", description: "Software Developer", category: people ))
photos.push(Photo.create(title: "Nicolas", description: "Software Developer", category: people ))
photos.push(Photo.create(title: "Ching yu", description: "A farming woman", category: people ))
photos.push(Photo.create(title: "Karla", description: "a flower girl", category: people ))
photos.push(Photo.create(title: "Andres", description: "a guy who likes to do", category: people ))
photos.push(Photo.create(title: "Kate & Stuart", description: "Two People Petting their Cat", category: people ))
photos.push(Photo.create(title: "A dock without loneliness", description: "Nice sea landscape at night", category: scenarios ))
photos.push(Photo.create(title: "Day to Night", description: "Un paisaje del mar visualizando los adios del dia y la bienvenida de la noche", category: scenarios ))
photos.push(Photo.create(title: "Orange Rocky Valley", description: "A flash happening there, good sling the flash", category: scenarios ))
photos.push(Photo.create(title: "Fleeting Space", description: "Endless Spiral of Stars", category: scenarios ))
photos.push(Photo.create(title: "A cute Squirrel", description: "A very cute squirrel isn't it?", category: animals ))
photos.push(Photo.create(title: "A forest of birch trees", description: "A magical forest for its incredible trees", category: scenarios ))
photos.push(Photo.create(title: "A very Beautiful Bird", description: "A very beautiful kind of bird", category: animals ))
photos.push(Photo.create(title: "a very rare plant", description: "A very curious and rare plant species", category: scenarios ))

photos[0].cover.attach(io: File.open('db/images/image1.png'), filename: 'image1.png')
photos[1].cover.attach(io: File.open('db/images/image2.png'), filename: 'image2.png')
photos[2].cover.attach(io: File.open('db/images/image3.png'), filename: 'image3.png')
photos[3].cover.attach(io: File.open('db/images/image4.png'), filename: 'image4.png')
photos[4].cover.attach(io: File.open('db/images/image5.png'), filename: 'image5.png')
photos[5].cover.attach(io: File.open('db/images/image6.png'), filename: 'image6.png')
photos[6].cover.attach(io: File.open('db/images/image7.png'), filename: 'image7.png')
photos[7].cover.attach(io: File.open('db/images/image8.png'), filename: 'image8.png')
photos[8].cover.attach(io: File.open('db/images/image9.png'), filename: 'image9.png')
photos[9].cover.attach(io: File.open('db/images/image10.png'), filename: 'image10.png')
photos[10].cover.attach(io: File.open('db/images/image11.png'), filename: 'image11.png')
photos[11].cover.attach(io: File.open('db/images/image12.png'), filename: 'image12.png')
photos[12].cover.attach(io: File.open('db/images/image13.png'), filename: 'image13.png')
photos[13].cover.attach(io: File.open('db/images/image14.png'), filename: 'image14.png')
photos[14].cover.attach(io: File.open('db/images/image15.png'), filename: 'image15.png')
photos[15].cover.attach(io: File.open('db/images/image16.png'), filename: 'image16.png')
photos[16].cover.attach(io: File.open('db/images/image17.png'), filename: 'image17.png')
photos[17].cover.attach(io: File.open('db/images/image18.png'), filename: 'image18.png')
photos[18].cover.attach(io: File.open('db/images/image19.png'), filename: 'image19.png')
photos[19].cover.attach(io: File.open('db/images/image20.png'), filename: 'image20.png')
photos[20].cover.attach(io: File.open('db/images/image21.png'), filename: 'image21.png')
photos[21].cover.attach(io: File.open('db/images/image22.png'), filename: 'image22.png')
photos[22].cover.attach(io: File.open('db/images/image23.png'), filename: 'image23.png')
photos[23].cover.attach(io: File.open('db/images/image24.png'), filename: 'image24.png')
photos[24].cover.attach(io: File.open('db/images/image25.png'), filename: 'image25.png')
photos[25].cover.attach(io: File.open('db/images/image26.png'), filename: 'image26.png')
photos[26].cover.attach(io: File.open('db/images/image27.png'), filename: 'image27.png')
photos[27].cover.attach(io: File.open('db/images/image28.png'), filename: 'image28.png')


puts "Seeding Comments"

categories.each do |category|
  rand(1..5).times.each do |i|
    Comment.create(body:[*'a'..'z', *0..9, *'A'..'Z'].shuffle.join, commentable:category)
  end
end
photos.each do |photo|
  rand(1..10).times.each do |i|
    Comment.create(body:[*'a'..'z', *0..9, *'A'..'Z'].shuffle.join, commentable:photo)
  end
end


puts "Seeding - END"
