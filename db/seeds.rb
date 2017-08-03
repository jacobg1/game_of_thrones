# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.destroy_all
Character.destroy_all

house_stark = House.create(house_name: 'Stark', moto: 'something something Northside', sigil: 'probably a wolf', house_photo_url: "https://images-na.ssl-images-amazon.com/images/I/41cN7PEiXzL.jpg")
house_lannister = House.create(house_name: 'Lannister', moto: 'hear me roar', sigil: 'some sort of griffon', house_photo_url: "https://s-media-cache-ak0.pinimg.com/236x/55/3a/21/553a21aa0011fce811c7a862f333cc90--house-lannister--day-challenge.jpg")


john_snow = house_stark.characters.create(char_name: 'John Snow', description: 'Badass',photo_url: 'http://www.elcomercio.es/el_correo/noticias/201509/16/media/cortadas/jon-snow--490x578.jpg')
cersei_lannister = house_lannister.characters.create(char_name: 'Cersei', description: 'Literally the worse character ever', photo_url: 'http://vignette2.wikia.nocookie.net/gameofthrones/images/c/c2/CerseiEW.png/revision/latest?cb=20120316191120')
