# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
StockCard.destroy_all
Company.destroy_all
User.create(name: "Dummy", username: "Dummy", money: 1000)
Company.create(name: "Company1", description: "asdfasdf", price: 1)
Company.create(name: "Company2", description: "asdfasdf", price: 10)
Company.create(name: "Company3", description: "asdfasdf", price: 100)
