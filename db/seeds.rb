# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# puts 'Seed: Deleting existing records...'

# Review.delete_all
# Booking.delete_all
Car.delete_all
User.delete_all

puts 'Seed: Seeding...'

# user1 = User.create!(
#   email: "joao@gmail.com",
#   first_name: "joao",
#   last_name: "silva",
#   password: "123456",
#   password_confirmation: "123456"
# )

# user2 = User.create!(
#   email: "carlos@yahoo.com",
#   first_name: "carlos",
#   last_name: "silva",
#   password: "123456",
#   password_confirmation: "123456"
# )

# user3 = User.create!(
#   email: "pedro@gmail.com",
#   first_name: "pedro",
#   last_name: "silva",
#   password: "123456",
#   password_confirmation: "123456"
# )

# user4 = User.create!(
#   email: "paulo@gmail.com",
#   first_name: "Paulo",
#   last_name: "Silva",
#   password: "123456",
#   password_confirmation: "123456"
# )

# user5 = User.create!(
#   email: "Paulo5@gmail.com",
#   first_name: "Paulo5",
#   last_name: "Silva",
#   password: "123456",
#   password_confirmation: "123456"
# )
# user6 = User.create!(
#   email: "Paulo6@gmail.com",
#   first_name: "Paulo6",
#   last_name: "Silva",
#   password: "123456",
#   password_confirmation: "123456"
# )
# user7 = User.create!(
#   email: "Paulo7@gmail.com",
#   first_name: "Paulo7",
#   last_name: "Silva",
#   password: "123456",
#   password_confirmation: "123456"
# )
# user8 = User.create!(
#   email: "Paulo8@gmail.com",
#   first_name: "Paulo8",
#   last_name: "Silva",
#   password: "123456",
#   password_confirmation: "123456"
# )
user9 = User.create!(
  email: "Paulo9@gmail.com",
  first_name: "Paulo9",
  last_name: "Silva",
  birth_date: Date.new(2024, 8, 22),
  password: "123456",
  password_confirmation: "123456"
)
# user10 = User.create!(
#   email: "Paulo11@gmail.com",
#   first_name: "Paulo11",
#   last_name: "Silva",
#   password: "123456",
#   password_confirmation: "123456"
# )

car1 = Car.create!(
  user: user9,
  plate: "IA7B8D1",
  description: "asjaskjakajasl",
  model: "Porsche",
  city: "London",
  price: 200.00
)

# car2 = Car.create!(
#   plate: "IA7B8D2",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )

# car3 = Car.create!(
#   plate: "IA7B8D3",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )

# car4 = Car.create!(
#   plate: "IA7B8D4",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )

# car5 = Car.create!(
#   plate: "IA7B8D5",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )

# car6 = Car.create!(
#   plate: "IA7B8D6",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )

# car7 = Car.create!(
#   plate: "IA7B8D7",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )

# car8 = Car.create!(
#   plate: "IA7B8D8",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )
# car9 = Car.create!(
#   plate: "IA7B8D9",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )
# car10 = Car.create!(
#   plate: "IA7B8D0",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )
# car11 = Car.create!(
#   plate: "IA1B8D6",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )
# car12 = Car.create!(
#   plate: "IA2B8D6",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )
# car13 = Car.create!(
#   plate: "IA3B8D6",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00)
# car14 = Car.create!(
#   plate: "IA4B8D6",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )
# car15 = Car.create!(
#   plate: "IA5B8D6",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )
# car16 = Car.create!(
#   plate: "IA6B8D6",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )
# car17 = Car.create!(
#   plate: "IA7B8D6",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )
# car18 = Car.create!(
#   plate: "IA8B8D6",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )
# car19 = Car.create!(
#   plate: "IA9B8D6",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )
# car20 = Car.create!(
#   plate: "IA0B8D6",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )
# car21 = Car.create!(
#   plate: "IA7B1D6",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )
# car22 = Car.create!(
#   plate: "IA7B2D6",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )
# car23 = Car.create!(
#   plate: "IA7B3D6",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )
# Car24 = Car.create!(
#   plate: "IA7B4D6",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )
# Car25 = Car.create!(
#   plate: "IA7B5D6",
#   description: "asjaskjakajasl",
#   model: "Porsche",
#   city: "London",
#   price: 200.00
# )

# booking1 = Booking.create!(
#   user: user1,
#   Car: Car1,
#   total_price: 8000.00,
#   start_date: DateTime.strptime("08/01/2018 11:00", "%m/%d/%Y %H:%M"),
#   end_date: DateTime.strptime("08/02/2018 17:00", "%m/%d/%Y %H:%M"),
# )

# booking2 = Booking.create!(
#   user: user2,
#   Car: Car2,
#   total_price: 4500.00,
#   start_date: DateTime.strptime("12/01/2018 11:00", "%m/%d/%Y %H:%M"),
#   end_date: DateTime.strptime("03/01/2018 11:00", "%m/%d/%Y %H:%M"),
# )
