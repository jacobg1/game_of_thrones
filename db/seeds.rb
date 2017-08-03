# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.destroy_all
Character.destroy_all

house_stark = House.create(house_name: 'Stark', moto: 'something something Northside', sigil: 'probably a wolf')
house_lannister = House.create(house_name: 'Lannister', moto: 'hear me roar', sigil: 'some sort of griffon' )


john_snow = house_stark.characters.create(char_name: 'John Snow', photo_url: 'http://www.elcomercio.es/el_correo/noticias/201509/16/media/cortadas/jon-snow--490x578.jpg')
cersei_lannister = house_lannister.characters.create(char_name: 'Cersei', photo_url: 'http://vignette2.wikia.nocookie.net/gameofthrones/images/c/c2/CerseiEW.png/revision/latest?cb=20120316191120')
