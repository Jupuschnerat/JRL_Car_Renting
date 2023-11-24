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
last_name = ['Puschnerat', 'Ramos', 'Prado', 'Menezes', 'Valdivia', 'Severo', 'Mascaro', 'Geerdens', 'Cardoso', 'Amorim']

model_names =['Jeep Compass', 'VW T-Cross', 'Honda Civic', 'VW Saveiro', 'VW Touareg', 'Jeep Gladiator', 'Nissan Tiida', 'VW Nivus', 'Jeep Renegade', 'Toyota Hilux']
car_photos = [
  "https://www.jeep.com.br/content/dam/jeep/products/675/1ad/1/2024/page/hero.webp",
  "https://volkswagenpampa.com.br/wp-content/uploads/2023/01/VW_Novos_T-Cross_Prata.png",
  "https://garagem360.com.br/wp-content/uploads/2022/06/2a77d6d88be4e7d280f63dd75d9177b8.jpg",
  "https://www.automaistv.com.br/wp-content/uploads/2023/01/03f3_edited.jpg",
  "https://hips.hearstapps.com/autoweek/assets/s3fs-public/t-1_10.jpg?resize=1200:*",
  "https://di-uploads-pod40.dealerinspire.com/thefaricyboysautomotive/uploads/2022/02/2022-Jeep-Gladiator-Model-Left.jpg",
  "https://www.nissan-cdn.net/content/dam/Nissan/br/servicos/revisao-periodica-manuais/tiida.jpg",
  "https://www.comprecar.com.br/blog/wp-content/uploads/2021/12/VW-Nivus-2022_1-1.jpg",
  "https://www.jeepbarigui.com.br/wp-content/uploads/2019/10/longitude-azul-removebg-preview-1.png",
  "https://imgd.aeplcdn.com/664x374/n/cw/ec/109265/hilux-exterior-right-front-three-quarter-2.jpeg?isig=0&q=80"
]

city = [
  "São Paulo",
  "Campinas",
  "Rio de Janeiro",
  "Curitiba",
  "Florianópolis",
  "Porto Alegre",
  "Belo Horizonte",
  "Niterói",
  "Rio de Janeiro",
  "Campinas",
]

prices = [200, 250, 200, 300, 230, 220, 300, 350, 400, 330]

10.times do |i|
  User.create!(
    email: "#{first_name[i]}@gmail.com",
    first_name: "#{first_name[i]}",
    last_name: "#{last_name[i]}",
    birth_date: Date.parse('2023-11-30'),
    password: "123456"
  )
  puts User.last

  car = Car.new(
    user: User.last,
    plate: "IA7B8D1",
    description: "",
    model:"#{model_names[i]}" ,
    city: "#{city[i]}",
    price: prices[i]
  )
  file = URI.open(car_photos[i])

  car.photo.attach(io: file, filename: "car.png", content_type: "image/png")
  car.save!

end
puts 'Seed: Created!'

# VW T-Cross
# https://volkswagenpampa.com.br/wp-content/uploads/2023/01/VW_Novos_T-Cross_Prata.png

# Honda Civic
# https://garagem360.com.br/wp-content/uploads/2022/06/2a77d6d88be4e7d280f63dd75d9177b8.jpg

# VW Saveiro
# https://www.automaistv.com.br/wp-content/uploads/2023/01/03f3_edited.jpg

# VW Touareg
# https://hips.hearstapps.com/autoweek/assets/s3fs-public/t-1_10.jpg?resize=1200:*

# Jeep Gladiator
# https://di-uploads-pod40.dealerinspire.com/thefaricyboysautomotive/uploads/2022/02/2022-Jeep-Gladiator-Model-Left.jpg

# Nissan Tiida
# https://www.nissan-cdn.net/content/dam/Nissan/br/servicos/revisao-periodica-manuais/tiida.jpg

# VW Nivus
# https://www.comprecar.com.br/blog/wp-content/uploads/2021/12/VW-Nivus-2022_1-1.jpg

# Jeep Renegade
# https://renegade.jeep.com.br/content/dam/jeep/products/611/1km/1/2024/page/profile.webp

# Toyota Hilux
# https://imgd.aeplcdn.com/664x374/n/cw/ec/109265/hilux-exterior-right-front-three-quarter-2.jpeg?isig=0&q=80
