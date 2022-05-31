# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: "fernandogomezv@gmail.com", first_name: "Fernando", last_name: "Gomez", username: "fernandogomezv", password: "123456" )

salto = Trail.create(name: "Salto del cabrero", distance: 8, duration: 1000, elevation: 479, difficulty: "Pro", description: "Conoce esta ruta de punto a punto de 7,6-km cerca de Benaocaz, Cádiz. Por lo general, se considera una ruta moderada, que se tarda una media de 2 h 25 min en recorrer. Esta ruta es excelente para el senderismo. La ruta está abierta todo el año y es perfecta para visitar en cualquier momento.", location: "Parque sierra de grazalema", user: user)

point1 = Point.create(latitude: 36.70437000, longitude: -5.42289000, elevation: 775, trail: salto)
point2 = Point.create(latitude: 36.70443000, longitude: -5.42287000, elevation: 775, trail: salto)
point3 = Point.create(latitude: 36.70474000, longitude: -5.42274000, elevation: 777, trail: salto)
