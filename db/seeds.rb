# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

User.destroy_all
Trail.destroy_all
Point.destroy_all

user = User.create(email: "fernandogomezv@gmail.com", first_name: "Fernando", last_name: "Gomez", username: "fernandogomezv", password: "123456" )
user2 = User.create(email: "juandirection@gmail.com", first_name: "Juan", last_name: "Direction", username: "juandirection", password: "123456" )
user3 = User.create(email: "ultravio@gmail.com", first_name: "Violette", last_name: "Ultra", username: "ultravio", password: "123456" )
user4 = User.create(email: "gonzalito@gonzalito.gon", first_name: "Gonzalito", last_name: "Guerra", username: "gggonzalito", password: "123456" )

roraima = Trail.create(name: "Mount Roraima", distance: 69, duration: 93_600, elevation: 3881, difficulty: "Pro", description: "Discover this 68.4-km loop trail near Gran Sabana, Bolívar. Generally considered a challenging route, it takes an average of 25 h 37 min to complete. This is a popular trail for backpacking and hiking, but you can still enjoy some solitude during quieter times of day.", location: "La Gran Sabana, Venezuela", user: user)
monserrate = Trail.create(name: "Monserrate", distance: 5, duration: 14_400, elevation: 804, difficulty: "Experienced", description: "Try this 5.1-km out-and-back trail near Bogotá. Generally considered a challenging route, it takes an average of 3 h 43 min to complete.", location: "Bogota, Colombia", user: user2)
barbizon = Trail.create(name: "Barbizon and Tillaie Reserve Loop", distance: 15, duration: 13_200, elevation: 296, difficulty: "Intermediate", description: "Experience this 15.3-km loop trail near Fontainebleau, Seine-et-Marne. Generally considered a moderately challenging route, it takes an average of 3 h 43 min to complete.", location: "Forêt Domaniale de Fontainebleau", user: user3)
salto = Trail.create(name: "Salto del cabrero", distance: 8, duration: 8_000, elevation: 479, difficulty: "Beginner", description: "Get to know this 7.6-km point-to-point trail near Benaocaz, Cádiz. Generally considered a moderately challenging route, it takes an average of 2 h 25 min to complete. This trail is great for hiking.", location: "Parque sierra de grazalema", user: user4)

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

pin1 = Pin.create!(latitude: 36.70474000, longitude: -5.42274000, trail: salto, description: "dangerous dangerous dangerous dangerous !!!!!!!", kind: "Warning")
