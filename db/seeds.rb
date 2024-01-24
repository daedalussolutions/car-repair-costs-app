# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Service.create!([{
    title: "Oil Change",
    minimum_price: 35.45,
    maximum_price: 140.59,
    average_price: 88.02
},
{
    title: "Brake Replacement",
    minimum_price: 289.20,
    maximum_price: 930.39,
    average_price: 609.80
},
{
    title: "Starter Motor Replacement",
    minimum_price: 199.20,
    maximum_price: 759.30,
    average_price: 479.25
}])