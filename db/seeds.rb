# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(email: "Julien@rc.com", password: "123456")
Car.create!(brand: "Peugeot", model: "3008", year_of_production: "2008", address: "5 rue pasteur Paris", price_per_day:"300", user_id: user.id)
Car.create!(brand: "Peugeot", model: "RDX", year_of_production: "2008", address: "5 rue pasteur Paris", price_per_day:"300", user_id: user.id)
Car.create!(brand: "Fiat", model: "panda", year_of_production: "2008", address: "5 rue pasteur Paris", price_per_day:"300", user_id: user.id)
Car.create!(brand: "Peugeot", model: "3000", year_of_production: "2008", address: "5 rue pasteur Paris", price_per_day:"300", user_id: user.id)
Car.create!(brand: "Renault", model: "511", year_of_production: "2008", address: "5 rue pasteur Paris", price_per_day:"300", user_id: user.id)
