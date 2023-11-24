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

first_name = ['Julia', 'Rodrigo', 'Lucas', 'Andre', 'Carla', 'Luca', 'Stella', 'Chloé', 'Milene', 'Tais']
last_name = ['Puschnerat', 'Ramos', 'Prado', 'Menezes', 'Valdivia', 'Severo', 'Mascaro', 'Geerdens', 'Cardoso', 'Amorim' ]


10.times do |i|
  User.create!(
    email: "#{first_name[i]}@gmail.com",
    first_name: "#{first_name[i]}",
    last_name: "#{last_name[i]}",
    birth_date: Date.parse('2023-11-30'),
    password: "123456"
  )
  puts User.last

end

car = Car.new(
  user: User.last,
  plate: "IA7B8D1",
  description: "fast car",
  model: "Porsche",
  city: "London",
  price: 200.00
)
file = URI.open("https://www.jeep.com.br/content/dam/jeep/products/675/1ad/1/2024/page/hero.webp")

car.photo.attach(io: file, filename: "car.png", content_type: "image/png")
car.save!

puts 'Seed: Created!'
