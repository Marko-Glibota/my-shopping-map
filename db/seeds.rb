# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
first_shop = Shop.new(
  name: "Le Zephyr",
  address: "1 Rue du Jourdain, 75020 Paris"
  )

first_shop.save!
puts "#{first_shop.name} successfully created!"

second_shop = Shop.new(
  name: "Les bières de Belleville",
  address: "9 Rue Jean-Baptiste Dumay, 75020 Paris"
  )

second_shop.save!
puts "#{second_shop.name} successfully created!"

third_shop = Shop.new(
  name: "Ô Divin",
  address: "130 Rue de Belleville, 75020 Paris"
  )

third_shop.save!
puts "#{third_shop.name} successfully created!"
