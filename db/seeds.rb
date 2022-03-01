# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
ProductCategory.destroy_all
Restaurant.destroy_all
Category.destroy_all

puts 'Criando Categorias'

path_image = 'public/images/categories/mexican.jpg'
c = Category.create(id: 1, title: 'mexicana')
c.image.attach(io: File.open(path_image), filename: 'mexican.jpg')

path_image = 'public/images/categories/italian.jpeg'
c = Category.create(id: 2, title: 'italiana')
c.image.attach(io: File.open(path_image), filename: 'italian.jpeg')

path_image = 'public/images/categories/japonese.jpeg'
c = Category.create(id: 3, title: 'japonesa')
c.image.attach(io: File.open(path_image), filename: 'japonese.jpeg')

path_image = 'public/images/categories/vegan.jpeg'
c = Category.create(id: 4, title: 'vegana')
c.image.attach(io: File.open(path_image), filename: 'vegan.jpeg')

path_image = 'public/images/categories/peruvian.jpg'
c = Category.create(id: 5, title: 'peruana')
c.image.attach(io: File.open(path_image), filename: 'peruana.jpg')


puts 'Cadastrando Restaurantes'

# Mexican Restaurants
path_image = 'public/images/restaurants/1.jpeg'
r = Restaurant.create!(
  name: 'Los Sombreros',
  description: 'Nossa missão tem sido ajudar as pessoas a alcançar seus objetivos de saúde e bem-estar. Embora tenhamos mudado ao longo dos anos, nossos valores permaneceram os mesmos.',
  delivery_tax: 5.50,
  city: 'São Paulo', street: 'Bela terra',
  number: '1393', neighborhood: 'Mercês', category_id: 1
)
r.image.attach(io: File.open(path_image), filename: '1.jpg')
pc = ProductCategory.create!(title: 'Pratos Mexicanos', restaurant: r)
prod = Product.create!(name: 'Nacho Guacamole', price: 19, description: 'Tortilhas com Guacamole',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/nachosg.jpg'), filename: 'nachosg.jpg')
prod = Product.create!(name: 'Nacho', price: 19, description: 'Tortilhas com milho', product_category: pc)
prod.image.attach(io: File.open('public/images/products/nachosg2.jpeg'), filename: 'nachosg2.jpeg')

# Curitiba
path_image = 'public/images/restaurants/1.jpeg'
r = Restaurant.create!(
  name: 'Los Sombreros - CWB',
  description: 'Nossa missão tem sido ajudar as pessoas a alcançar seus objetivos de saúde e bem-estar. Embora tenhamos mudado ao longo dos anos, nossos valores permaneceram os mesmos.',
  delivery_tax: 5.50,
  city: 'Curitiba', street: 'Bela terra',
  number: '1393', neighborhood: 'Mercês', category_id: 1
)
r.image.attach(io: File.open(path_image), filename: '1.jpg')
pc = ProductCategory.create!(title: 'Pratos Mexicanos', restaurant: r)
prod = Product.create!(name: 'Nacho Guacamole', price: 19, description: 'Tortilhas com Guacamole',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/nachosg.jpg'), filename: 'nachosg.jpg')
prod = Product.create!(name: 'Nacho', price: 19, description: 'Tortilhas com milho', product_category: pc)
prod.image.attach(io: File.open('public/images/products/nachosg2.jpeg'), filename: 'nachosg2.jpeg')

path_image = 'public/images/restaurants/2.jpeg'
r = Restaurant.create!(
  name: 'Ola Que Tal',
  description: 'Para alcançar e manter essa distinção em comida e vinho, serviço, ambiente e ambiente, o restaurante ganha reputação de primeira classe por gastronomia, hospitalidade graciosa e informada, conforto e beleza que atraem clientes novos e repetidos ano após ano.',
  delivery_tax: 5.50,
  city: 'São Paulo', street: 'Aminta de Barros',
  number: '659', neighborhood: 'Centro', category_id: 1
)
r.image.attach(io: File.open(path_image), filename: '2.jpg')
pc = ProductCategory.create!(title: 'Pratos Mexicanos', restaurant: r)
prod = Product.create!(name: 'Burrito', price: 19, description: 'Tortilhas com Guacamole',  product_category: pc)
pr