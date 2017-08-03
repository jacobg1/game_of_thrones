# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
House.destroy_all
Character.destroy_all

andy = User.create!(email: 'andrew.whitley@generalassemb.ly', password: 'password')


house_stark = andy.houses.create!(house_name: 'Stark', moto: 'something something Northside', sigil: 'probably a wolf', house_photo_url: "https://images-na.ssl-images-amazon.com/images/I/41cN7PEiXzL.jpg")
house_lannister = andy.houses.create!(house_name: 'Lannister', moto: 'hear me roar', sigil: 'some sort of griffon', house_photo_url: "https://s-media-cache-ak0.pinimg.com/236x/55/3a/21/553a21aa0011fce811c7a862f333cc90--house-lannister--day-challenge.jpg")
house_tyrell = andy.houses.create!(house_name: 'Tyrell', moto: 'growing strong', sigil: 'golden rose', house_photo_url: "http://img15.hostingpics.net/pics/423766HouseTyrell.png")
house_tyrell = andy.houses.create!(house_name: 'Targaryen', moto: 'fire and blood', sigil: 'three headed dragon', house_photo_url: "http://i.imgur.com/ZOy4qyr.png")


john_snow = house_stark.characters.create!(char_name: 'John Snow', description: 'Badass', photo_url: 'http://www.elcomercio.es/el_correo/noticias/201509/16/media/cortadas/jon-snow--490x578.jpg')
cersei_lannister = house_lannister.characters.create!(char_name: 'Cersei', description: 'Literally the worse character ever', photo_url: 'http://vignette2.wikia.nocookie.net/gameofthrones/images/c/c2/CerseiEW.png/revision/latest?cb=20120316191120')
rob_stark = house_stark.characters.create!(char_name: 'Rob Stark', description: 'King in the North?', photo_url: 'https://www.quizz.biz/uploads/quizz/872938/5_5772s.jpg')
