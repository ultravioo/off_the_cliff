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
user4 = User.create(email: "gonzalito@gonzalito.gon", first_name: "Gonzalito", last_name: "Guerra", username: "gggonzalito", password: "123456" )
user5 = User.create(email: "dean@goated.com", first_name: "Dean", last_name: "Potter", username: "deanmagician", password: "123456")
url100 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654501549/offthecliff/deanpotter_bcyipq.webp')
user5.photo.attach(io: url100, filename: '11.jpg', content_type: 'images/jpg')

roraima = Trail.create(name: "Mount Roraima", distance: 69, duration: 93_600, elevation: 3881, difficulty: "Pro", description: "Discover this 68.4-km loop trail near Gran Sabana, Bolívar. Generally considered a challenging route, it takes an average of 25 h 37 min to complete. This is a popular trail for backpacking and hiking, but you can still enjoy some solitude during quieter times of day.", location: "La Gran Sabana, Venezuela", user: user)
url = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654167141/offthecliff/roraima_mrixmf.jpg')
roraima.photo.attach(io: url, filename: '1.jpg', content_type: 'images/jpg')

monserrate = Trail.create(name: "Monserrate", distance: 5, duration: 14_400, elevation: 804, difficulty: "Experienced", description: "Try this 5.1-km out-and-back trail near Bogotá. Generally considered a challenging route, it takes an average of 3 h 43 min to complete.", location: "Bogota, Colombia", user: user2)
url2 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654167141/offthecliff/monserrate_cgkrhh.jpg')
monserrate.photo.attach(io: url2, filename: '2.jpg', content_type: 'images/jpg')

barbizon = Trail.create(name: "Barbizon and Tillaie Reserve Loop", distance: 15, duration: 13_200, elevation: 296, difficulty: "Intermediate", description: "Experience this 15.3-km loop trail near Fontainebleau, Seine-et-Marne. Generally considered a moderately challenging route, it takes an average of 3 h 43 min to complete.", location: "Forêt Domaniale de Fontainebleau, France", user: user3)
url3 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654167141/offthecliff/barbizon_xitmum.jpg')
barbizon.photo.attach(io: url3, filename: '3.jpg', content_type: 'images/jpg')

salto = Trail.create(name: "Salto del cabrero", distance: 8, duration: 8_000, elevation: 479, difficulty: "Beginner", description: "Get to know this 7.6-km point-to-point trail near Benaocaz, Cádiz. Generally considered a moderately challenging route, it takes an average of 2 h 25 min to complete. This trail is great for hiking.", location: "Parque sierra de grazalema, Spain", user: user4)
url4 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654167141/offthecliff/cabrero_nnxvwe.jpg')
salto.photo.attach(io: url4, filename: '4.jpg', content_type: 'images/jpg')

gr34 = Trail.create(name: "GR34 Etape 18", distance: 135, duration: 100_800, elevation: 1_259, difficulty: "Pro", description: "Enjoy this 135.0-km point-to-point trail near Le Tour-du-Parc, Morbihan. Generally considered a moderately challenging route, it takes an average of 28 h 2 min to complete. ", location: "Natural park of the Gulf of Morbihan, France", user: user3)
url5 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654174673/offthecliff/g34-2_xkfrae.jpg')
gr34.photo.attach(io: url5, filename: '5.jpg', content_type: 'images/jpg')

siete = Trail.create(name: "Seven Peaks", distance: 12, duration: 14_400, elevation: 569, difficulty: "Experienced", description: "Discover this 12.1-km loop trail near Cercedilla, Community of Madrid. Generally considered a challenging route, it takes an average of 4 h 13 min to complete. This is a popular trail for backpacking, hiking, and snowshoeing, but you can still enjoy some solitude during quieter times of day", location: "Parque sierra de grazalema, Spain", user: user4)
url6 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654183594/offthecliff/siete_zkb1pk.jpg')
siete.photo.attach(io: url6, filename: '6.jpg', content_type: 'images/jpg')

cochino = Trail.create(name: "La Pedriza - Canto Cochino", distance: 12, duration: 12_600, elevation: 426, difficulty: "Intermediate", description: "Head out on this 12.1-km loop trail near Manzanares El Real, Community of Madrid. Generally considered a moderately challenging route, it takes an average of 3 h 36 min to complete.", location: "Parque Regional de la Cuenca Alta de Manzanares, Spain", user: user4)
url7 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654183999/offthecliff/cochino_o7mx0p.jpg')
cochino.photo.attach(io: url7, filename: '7.jpg', content_type: 'images/jpg')

glorieta = Trail.create(name: "Mirador Peñarrubia", distance: 4, duration: 3_600, elevation: 101, difficulty: "Beginner", description: "Check out this 4.0-km loop trail near Madrid, Community of Madrid. Generally considered a moderately challenging route, it takes an average of 1 h 4 min to complete.", location: "Glorieta de los pinos, Spain", user: user4)
url8 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654498991/offthecliff/glorieta_eem68k.jpg')
glorieta.photo.attach(io: url8, filename: '8.jpg', content_type: 'images/jpg')

rascafria = Trail.create(name: "Rascafría Trail", distance: 8, duration: 9_000, elevation: 344, difficulty: "Intermediate", description: "Get to know this 7.6-km loop trail near Rascafría, Community of Madrid. Generally considered a moderately challenging route, it takes an average of 2 h 32 min to complete.", location: "Madrid, Spain", user: user4)
url9 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654499465/offthecliff/rascafria_lz3hf9.jpg')
rascafria.photo.attach(io: url9, filename: '9.jpg', content_type: 'images/jpg')

hecce = Trail.create(name: "Hecce Homo", distance: 13, duration: 12_600, elevation: 329, difficulty: "Intermediate", description: "Enjoy this 13.0-km loop trail near Alcalá de Henares, Community of Madrid. Generally considered a moderately challenging route, it takes an average of 3 h 26 min to complete.", location: "Parque natural de los cerros, Spain", user: user4)
url10 = URI.open('https://res.cloudinary.com/rubberd/image/upload/v1654499831/offthecliff/hecce_ekgldb.jpg')
hecce.photo.attach(io: url10, filename: '10.jpg', content_type: 'images/jpg')

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
pin2 = Pin.create!(latitude: 36.71063000, longitude: -5.42455000, trail: salto, description: "tree has fallen down", kind: "Roadblock")
pin3 = Pin.create!(latitude: 36.74420000, longitude: -5.40692000, trail: salto, description: "Great to sleep the first day", kind: "Camping Site")
pin4 = Pin.create!(latitude: 36.75417000, longitude: -5.39606000, trail: salto, description: "The view here is super cool if you on the right side of the trail", kind: "Picture Spot")
