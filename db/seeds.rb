# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
require 'open-uri'

User.destroy_all
Hike.destroy_all
Trail.destroy_all
Point.destroy_all
Pin.destroy_all
Favorite.destroy_all
Review.destroy_all

user = User.create(email: "fernandogomezv@gmail.com", first_name: "Fernando", last_name: "Gomez", username: "fernandogomezv", password: "123456" )
user2 = User.create(email: "juandirection@gmail.com", first_name: "Juan", last_name: "Direction", username: "juandirection", password: "123456" )
user3 = User.create(email: "ultravio@gmail.com", first_name: "Violette", last_name: "Ultra", username: "ultravio", password: "123456" )
url101 = URI.open("https://res.cloudinary.com/rubberd/image/upload/v1654529118/offthecliff/IMG_2198_ziqyar.heic")
user3.photo.attach(io: url101, filename: '101.jpg', content_type: 'images/jpg')
user4 = User.create(email: "gonzalito@gonzalito.gon", first_name: "Gonzalito", last_name: "Guerra", username: "gggonzalito", password: "123456" )
user5 = User.create(email: "dean@goated.com", first_name: "Dean", last_name: "Potter", username: "deanmagician", password: "123456")
url100 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654501549/offthecliff/deanpotter_bcyipq.webp')
user5.photo.attach(io: url100, filename: '100.jpg', content_type: 'images/jpg')

roraima = Trail.create!(name: "Mount Roraima", distance: 69, duration: 93_600, elevation: 3881, difficulty: "Pro", description: "Discover this 68.4-km loop trail near Gran Sabana, Bolívar. Generally considered a challenging route, it takes an average of 25 h 37 min to complete. This is a popular trail for backpacking and hiking, but you can still enjoy some solitude during quieter times of day.", location: "La Gran Sabana, Venezuela", user: user)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654167141/offthecliff/roraima_mrixmf.jpg')
roraima.photo.attach(io: url, filename: '1.jpg', content_type: 'images/jpg')
#check

monserrate = Trail.create!(name: "Monserrate", distance: 5, duration: 14_400, elevation: 804, difficulty: "Experienced", description: "Try this 5.1-km out-and-back trail near Bogotá. Generally considered a challenging route, it takes an average of 3 h 43 min to complete.", location: "Bogota, Colombia", user: user2)
url2 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654167141/offthecliff/monserrate_cgkrhh.jpg')
monserrate.photo.attach(io: url2, filename: '2.jpg', content_type: 'images/jpg')
#check

barbizon = Trail.create!(name: "Barbizon and Tillaie Reserve Loop", distance: 15, duration: 13_200, elevation: 296, difficulty: "Intermediate", description: "Experience this 15.3-km loop trail near Fontainebleau, Seine-et-Marne. Generally considered a moderately challenging route, it takes an average of 3 h 43 min to complete.", location: "Forêt Domaniale de Fontainebleau, France", user: user3)
url3 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654167141/offthecliff/barbizon_xitmum.jpg')
barbizon.photo.attach(io: url3, filename: '3.jpg', content_type: 'images/jpg')
#check

salto = Trail.create!(name: "Salto del cabrero", distance: 8, duration: 8_000, elevation: 479, difficulty: "Beginner", description: "Get to know this 7.6-km point-to-point trail near Benaocaz, Cádiz. Generally considered a moderately challenging route, it takes an average of 2 h 25 min to complete. This trail is great for hiking.", location: "Parque sierra de grazalema, Spain", user: user4)
url4 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654167141/offthecliff/cabrero_nnxvwe.jpg')
salto.photo.attach(io: url4, filename: '4.jpg', content_type: 'images/jpg')
#check

gr34 = Trail.create!(name: "GR34 Etape 18", distance: 135, duration: 100_800, elevation: 1_259, difficulty: "Pro", description: "Enjoy this 135.0-km point-to-point trail near Le Tour-du-Parc, Morbihan. Generally considered a moderately challenging route, it takes an average of 28 h 2 min to complete. ", location: "Natural park of the Gulf of Morbihan, France", user: user3)
url5 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654174673/offthecliff/g34-2_xkfrae.jpg')
gr34.photo.attach(io: url5, filename: '5.jpg', content_type: 'images/jpg')
#check

siete = Trail.create!(name: "Seven Peaks", distance: 12, duration: 14_400, elevation: 569, difficulty: "Experienced", description: "Discover this 12.1-km loop trail near Cercedilla, Community of Madrid. Generally considered a challenging route, it takes an average of 4 h 13 min to complete. This is a popular trail for backpacking, hiking, and snowshoeing, but you can still enjoy some solitude during quieter times of day", location: "Parque sierra de grazalema, Spain", user: user4)
url6 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654183594/offthecliff/siete_zkb1pk.jpg')
siete.photo.attach(io: url6, filename: '6.jpg', content_type: 'images/jpg')
#check

cochino = Trail.create!(name: "La Pedriza - Canto Cochino", distance: 12, duration: 12_600, elevation: 426, difficulty: "Intermediate", description: "Head out on this 12.1-km loop trail near Manzanares El Real, Community of Madrid. Generally considered a moderately challenging route, it takes an average of 3 h 36 min to complete.", location: "Parque Regional de la Cuenca Alta de Manzanares, Spain", user: user4)
url7 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654183999/offthecliff/cochino_o7mx0p.jpg')
cochino.photo.attach(io: url7, filename: '7.jpg', content_type: 'images/jpg')
#check

glorieta = Trail.create!(name: "Mirador Peñarrubia", distance: 4, duration: 3_600, elevation: 101, difficulty: "Beginner", description: "Check out this 4.0-km loop trail near Madrid, Community of Madrid. Generally considered a moderately challenging route, it takes an average of 1 h 4 min to complete.", location: "Glorieta de los pinos, Spain", user: user4)
url8 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654498991/offthecliff/glorieta_eem68k.jpg')
glorieta.photo.attach(io: url8, filename: '8.jpg', content_type: 'images/jpg')
#check

rascafria = Trail.create!(name: "Rascafría Trail", distance: 8, duration: 9_000, elevation: 344, difficulty: "Intermediate", description: "Get to know this 7.6-km loop trail near Rascafría, Community of Madrid. Generally considered a moderately challenging route, it takes an average of 2 h 32 min to complete.", location: "Madrid, Spain", user: user4)
url9 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654499465/offthecliff/rascafria_lz3hf9.jpg')
rascafria.photo.attach(io: url9, filename: '9.jpg', content_type: 'images/jpg')
#check

hecce = Trail.create!(name: "Hecce Homo", distance: 13, duration: 12_600, elevation: 329, difficulty: "Intermediate", description: "Enjoy this 13.0-km loop trail near Alcalá de Henares, Community of Madrid. Generally considered a moderately challenging route, it takes an average of 3 h 26 min to complete.", location: "Parque natural de los cerros, Spain", user: user4)
url10 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654499831/offthecliff/hecce_ekgldb.jpg')
hecce.photo.attach(io: url10, filename: '10.jpg', content_type: 'images/jpg')
#check

riasbajas = Trail.create!(name: "Rias Bajas - Santiago de Compostela", distance: 782, duration: 709_200, elevation: 14_534, difficulty: "Pro", description: "Enjoy this 782.6-km point-to-point trail near Madrid, Community of Madrid. Generally considered a challenging route, it takes an average of 197 h 26 min to complete. This trail is great for road biking and bike touring.", location: "Madrid, Spain", user: user4)
url11 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654524489/offthecliff/roasbajas_zdd7yc.jpg')
riasbajas.photo.attach(io: url11, filename: '11.jpg', content_type: 'images/jpg')

tirso = Trail.create!(name: "Tirso de Molina - templo de Debod", distance: 11, duration: 10_800, elevation: 259, difficulty: "Beginner", description: "Explore this 11.9-km loop trail near Madrid, Community of Madrid. Generally considered a moderately challenging route, it takes an average of 3 h 0 min to complete. This trail is great for walking.",location: "Madrid, Spain", user: user4)
url12 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654525326/offthecliff/templo1_k1jnzw.jpg')
tirso.photo.attach(io: url12, filename: '12.jpg', content_type: 'images/jpg')

faron = Trail.create!(name: "Fort-Rouge to mount Faron loop", distance: 12, duration: 14_400, elevation: 557, difficulty: "Intermediate", description: "Try this 12.1-km loop trail near Toulon, Var. Generally considered a moderately challenging route, it takes an average of 4 h 4 min to complete. This is a popular trail for birding and hiking, but you can still enjoy some solitude during quieter times of day. The trail is open year-round and is beautiful to visit anytime.", location: "Toulon, Var", user: user4)
url13 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654524463/offthecliff/Le-Mont-Faron_i49fz1.jpg')
faron.photo.attach(io: url13, filename: '13.jpg', content_type: 'images/jpg')
#check

noirmoutier = Trail.create!(name: "Noirmoutier to Sables-d'Olonne", distance: 93, duration: 76_320, elevation: 660, difficulty: "Intermediate", description: "Enjoy this 93.2-km point-to-point trail near Noirmoutier-en-l'Île, Vendée. Generally considered a moderately challenging route, it takes an average of 21 h 14 min to complete.", location: "Noirmoutier-en-ile, Vendée", user: user3)
url14 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654524463/offthecliff/adobestock-159200544_limt6x.jpg')
noirmoutier.photo.attach(io: url14, filename: '14.jpg', content_type: 'images/jpg')
#check

sayulita = Trail.create!(name: "Sayulita - San Pancho", distance: 6, duration: 7_920, elevation: 259, difficulty: "Beginner", description: "Explore this 6.4-km out-and-back trail near Bahía de Banderas, Nayarit. Generally considered an easy route, it takes an average of 2 h 2 min to complete. This trail is great for birding, hiking, and trail running, and it's unlikely you'll encounter many other people while exploring. ", location: "Banderas, Mexico", user: user2)
url15 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654525335/offthecliff/hiking-cerro-del-mono-sayulita-punta-mita-1-1_k2fxcs.jpg')
sayulita.photo.attach(io: url15, filename: '15.jpg', content_type: 'images/jpg')

casacada = Trail.create!(name: "Cascada Palo Maria", distance: 3, duration: 3_600, elevation: 148, difficulty: "Beginner", description: "Check out this 2.7-km out-and-back trail near Puerto Vallarta, Jalisco. Generally considered an easy route, it takes an average of 59 min to complete ",location: "Jalisco, Mexico", user: user)
url16 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654524463/offthecliff/adobestock-159200544_limt6x.jpg')
casacada.photo.attach(io: url16, filename: '16.jpg', content_type: 'images/jpg')

vassiviere = Trail.create!(name: "Lake Vassivière Loop", distance: 24, duration: 21_600, elevation: 496, difficulty: "Intermediate", description: "Experience this 23.8-km loop trail near Beaumont-du-Lac, Haute-Vienne. Generally considered a moderately challenging route, it takes an average of 6 h 7 min to complete. This trail is great for camping, road biking, and bike touring. The best times to visit this trail are February through November.",location: "Limousin, France", user: user)
url17 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654524463/offthecliff/adobestock-159200544_limt6x.jpg')
vassiviere.photo.attach(io: url17, filename: '17.jpg', content_type: 'images/jpg')

plane = Trail.create!(name: "Plane Crash Site Trail", distance: 9, duration: 11_196, elevation: 482, difficulty: "Intermediate", description: "Great route that leads to plane crash in the middle of the forest.",location: "Trinidad and Tobago", user: user4)
url18 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654528316/offthecliff/5b3029fbb8cb0.image_q7rxe9.jpg')
plane.photo.attach(io: url18, filename: '17.jpg', content_type: 'images/jpg')
#check

naiguata = Trail.create!(name: "Naiguata Peak", distance: 16, duration: 32_400, elevation: 1881, difficulty: "Pro", description: "Traditional route of ascent to the peak taking the path through PGP La Julia and following the La Julia - Mirador del Edén trail, upon reaching the viewpoint, take the Dos Banderas trail to the top of Topo Dos Banderas, continuing the ascent along the path towards the Topo Goering, Topo Galindo and finally on the way up to the top of Pico Naiguatá.", location: "Caracas, Venezuela", user: user4)
url19 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654527787/offthecliff/1614029_10152276346194709_1630007891_o_lb0mpa.jpg')
naiguata.photo.attach(io: url19, filename: '19.jpg', content_type: 'images/jpg')

humboldt = Trail.create!(name: "Pico Humboldt", distance: 3, duration: 5_400, elevation: 400, difficulty: "Pro", description: "Two of the highest peaks of Venezuela. Very hard and vey steep. Would recommend for pro and highly equiped.",location: "Merida, Venezuela", user: user4)
url20 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654528384/offthecliff/sT8nzy80_sfrng2.jpg')
humboldt.photo.attach(io: url20, filename: '20.jpg', content_type: 'images/jpg')

kukenan = Trail.create!(name: "Kukenan", distance: 69, duration: 93_600, elevation: 3881, difficulty: "Pro", description: "Discover this 68.4-km loop trail near Gran Sabana, Bolívar. Generally considered a challenging route, it takes an average of 25 h 37 min to complete. This is a popular trail for backpacking and hiking, but you can still enjoy some solitude during quieter times of day.", location: "La Gran Sabana, Venezuela", user: user)
url21 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654527895/offthecliff/kLqVXgpQ_irs8sn.jpg')
kukenan.photo.attach(io: url21, filename: '21.jpg', content_type: 'images/jpg')
#check

csv_file = File.read(Rails.root.join('db', 'roraima.csv'))
csv = CSV.parse(csv_file, headers: true, encoding: 'ISO-8859-1')
csv.each do |row|
  point = Point.new
  point.longitude = row[1].to_f
  point.latitude = row[0].to_f
  point.elevation = row[2].to_i
  point.trail = roraima
  point.save!
  puts "Point #{point.id} saved!"
end

csv_file2 = File.read(Rails.root.join('db', 'monserrate.csv'))
csv2 = CSV.parse(csv_file2, headers: true, encoding: 'ISO-8859-1')
csv2.each do |row|
  point = Point.new
  point.longitude = row[1].to_f
  point.latitude = row[0].to_f
  point.elevation = row[2].to_i
  point.trail = monserrate
  point.save!
  puts "Point #{point.id} saved!"
end

csv_file3 = File.read(Rails.root.join('db', 'barbizon.csv'))
csv3 = CSV.parse(csv_file3, headers: true, encoding: 'ISO-8859-1')
csv3.each do |row|
  point = Point.new
  point.longitude = row[1].to_f
  point.latitude = row[0].to_f
  point.elevation = row[2].to_i
  point.trail = barbizon
  point.save!
  puts "Point #{point.id} saved!"
end

csv_file4 = File.read(Rails.root.join('db', 'cabrero.csv'))
csv4 = CSV.parse(csv_file4, headers: true, encoding: 'ISO-8859-1')
csv4.each do |row|
  point = Point.new
  point.longitude = row[1].to_f
  point.latitude = row[0].to_f
  point.elevation = row[2].to_i
  point.trail = salto
  point.save!
  puts "Point #{point.id} saved!"
end

csv_file5 = File.read(Rails.root.join('db', 'GR34.csv'))
csv5 = CSV.parse(csv_file5, headers: true, encoding: 'ISO-8859-1')
csv5.each do |row|
  point = Point.new
  point.longitude = row[1].to_f
  point.latitude = row[0].to_f
  point.elevation = row[2].to_i
  point.trail = gr34
  point.save!
  puts "Point #{point.id} saved!"
end

csv_file6 = File.read(Rails.root.join('db', 'siete.csv'))
csv6 = CSV.parse(csv_file6, headers: true, encoding: 'ISO-8859-1')
csv6.each do |row|
  point = Point.new
  point.longitude = row[1].to_f
  point.latitude = row[0].to_f
  point.elevation = row[2].to_i
  point.trail = siete
  point.save!
  puts "Point #{point.id} saved!"
end

csv_file7 = File.read(Rails.root.join('db', 'cochino.csv'))
csv7 = CSV.parse(csv_file7, headers: true, encoding: 'ISO-8859-1')
csv7.each do |row|
  point = Point.new
  point.longitude = row[1].to_f
  point.latitude = row[0].to_f
  point.elevation = row[2].to_i
  point.trail = cochino
  point.save!
  puts "Point #{point.id} saved!"
end

pin1 = Pin.create!(latitude: 36.70474000, longitude: -5.42274000, trail: salto, description: "dangerous dangerous dangerous dangerous !!!!!!!", kind: "Warning")
url200= URI.open('')
pin1.photo.attach(io: url200, filename: '200.jpg', content_type: 'images/jpg')

pin2 = Pin.create!(latitude: 36.71063000, longitude: -5.42455000, trail: salto, description: "tree has fallen down", kind: "Roadblock")
url201= URI.open('')
pin2.photo.attach(io: url201, filename: '201.jpg', content_type: 'images/jpg')

pin3 = Pin.create!(latitude: 36.74420000, longitude: -5.40692000, trail: salto, description: "Great to sleep the first day", kind: "Camping Site")
url202= URI.open('')
pin3.photo.attach(io: url202, filename: '202.jpg', content_type: 'images/jpg')

pin4 = Pin.create!(latitude: 36.75417000, longitude: -5.39606000, trail: salto, description: "The view here is super cool if you on the right side of the trail", kind: "Picture Spot")
url203= URI.open('')
pin4.photo.attach(io: url203, filename: '203.jpg', content_type: 'images/jpg')
