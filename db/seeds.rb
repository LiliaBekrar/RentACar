# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bookings.destroy_all
Cars.destroy_all
User.destroy_all

user = User.create!(email: "lilia@rc.com", password: "123456")
p "#{user.email} created"
user = User.create!(email: "Julien@rc.com", password: "123456")
p "#{user.email} created"
car = Car.create!(brand: "Peugeot", model: "3008", year_of_production: "2008", address: "5 rue pasteur Paris", price_per_day:"300", user_id: user.id)
p "#{car.model} created"
car = Car.create!(brand: "Citroen", model: "RDX", year_of_production: "2018", address: "23 avenue paradis Lyon", price_per_day:"400", user_id: user.id)
p "#{car.model} created"
car.attach_photo
p "photo attached"

car = Car.create!(brand: "Fiat", model: "panda", year_of_production: "2022", address: "9 rue haxo Marseille", price_per_day:"350", user_id: user.id)
p "#{car.model} created"
car.attach_photo
p "photo attached"

user = User.create!(email: "Maelle@rc.com", password: "123456")
p "#{user.email} created"
user = User.create!(email: "Yasmine@rc.com", password: "123456")
p "#{user.email} created"
user = User.create!(email: "Franck@rc.com", password: "123456")
p "#{user.email} created"
user = User.create!(email: "Michel@rc.com", password: "123456")
p "#{user.email} created"

car = Car.create!(brand: "Peugeot", model: "3008", year_of_production: "2008", address: "5 rue pasteur Paris", price_per_day:"300", user_id: user.id)
p "#{car.model} created"
car.attach_photo
p "photo attached"

car = Car.create!(brand: "Citroen", model: "RDX", year_of_production: "2018", address: "23 avenue paradis Lyon", price_per_day:"400", user_id: user.id)
p "#{car.model} created"
car.attach_photo
p "photo attached"

car = Car.create!(brand: "Fiat", model: "panda", year_of_production: "2022", address: "9 rue haxo Marseille", price_per_day:"350", user_id: user.id)
p "#{car.model} created"
car.attach_photo
p "photo attached"

car = Car.create!(brand: "Peugeot", model: "3000", year_of_production: "2003", address: "23 boulevard sud Bordeaux", price_per_day:"199", user_id: user.id)
p "#{car.model} created"
car.attach_photo
p "photo attached"

car = Car.create!(brand: "Renault", model: "511", year_of_production: "1996", address: "5 rue pasteur Paris", price_per_day:"106", user_id: user.id)
p "#{car.model} created"
car.attach_photo
p "photo attached"


def attach_photo
  filename = "voiture-#{rand(1...3)}.jpg"
  self.photo.attach(io: File.open(Rails.root.join("app", "assets", "images", filename)), filename: 'voiture_default.jpg' , content_type: "image/jpg")
end
