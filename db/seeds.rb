# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!([{
    first_name: "admin",
    last_name: "admin",
    password: "password",
    email: "admin@wrenchportal.com"
}])
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
    title: "Wiper Blades Replacement",
    minimum_price: 50.00,
    maximum_price: 60.00,
    average_price: 55.99
},
{
    title: "Air Filter Replacement",
    minimum_price: 20.00,
    maximum_price: 85.00,
    average_price: 60.20
},
{
    title: "New Tire Installation",
    minimum_price: 150.00,
    maximum_price: 300.00,
    average_price: 220.00
},
{
    title: "Battery Replacement",
    minimum_price: 45.00,
    maximum_price: 250.00,
    average_price: 160.99
},
{
    title: "Wheel Alignment",
    minimum_price: 100.00,
    maximum_price: 500.00,
    average_price: 300.00
},
{
    title: "Wiper Blades Replacement",
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

Review.create!([{                         # TODO: Must create many more review seeds. Also create a user that will own all these default reviews.
  first_name: "Jack",
  last_name: "Thatcher",
  title: "Got an oil change at Mr. Lube",
  price: 99,
  service_provider: "Mr. Lube",
  date: Date.today,
  service: Service.find(1),
  user_id: 1
}])

# Seed Vehicle Makes
vehicle_makes = [
  "Toyota", "Ford", "Chevrolet", "Honda", "Nissan",
  "Jeep", "Subaru", "BMW", "Mercedes-Benz", "GMC",
  "Ram", "Hyundai", "Lexus", "Volkswagen", "Audi",
  "Kia", "Mazda", "Volvo", "Tesla", "Porsche",
  "Cadillac", "Buick", "Acura", "Infiniti", "Chrysler",
  "Lincoln", "Land Rover", "Jaguar", "Dodge", "Mitsubishi",
  "Mini", "Fiat", "Alfa Romeo", "Genesis", "Bentley",
  "Maserati", "Ferrari", "Lamborghini", "Rolls-Royce", "McLaren",
  "Bugatti", "Lotus", "Aston Martin", "Smart", "Maybach",
  "Koenigsegg", "Pagani", "Spyker", "Hennessey", "Vector",
  "Saleen", "Shelby", "Lancia", "Dacia", "Tata",
  "Citroen", "Peugeot", "Renault", "Saab", "Opel",
  "Seat", "Skoda", "Fiat", "Daihatsu", "Suzuki",
  "Proton", "Perodua", "Isuzu", "Hino", "Scion",
  "Daewoo", "Geely", "Chery", "Great Wall", "Brilliance",
  "Dongfeng", "Zotye", "JAC", "Changan", "BAIC",
  "BYD", "Wuling", "Mahindra", "Tata", "Maruti Suzuki",
  "Force", "Premier", "Hindustan", "Eicher", "Ashok Leyland"
]

vehicle_makes.each do |make_name|
  VehicleMake.create(name: make_name)
end

# Seed Vehicle Models and Years
vehicle_models_years = {
  "Toyota" => ["Camry", "Corolla", "RAV4", "Highlander", "Tacoma", "4Runner", "Sienna", "Prius"],
  "Ford" => ["F-150", "Escape", "Explorer", "Focus", "Mustang", "Fusion", "Edge", "Expedition"],
  "Chevrolet" => ["Silverado 1500", "Equinox", "Tahoe", "Suburban", "Traverse", "Malibu", "Camaro", "Colorado"],
  "Honda" => ["Civic", "Accord", "CR-V", "Pilot", "Odyssey", "HR-V", "Fit", "Ridgeline"],
  "Nissan" => ["Rogue", "Altima", "Sentra", "Frontier", "Pathfinder", "Versa", "Maxima", "Titan"],
  "Jeep" => ["Wrangler", "Grand Cherokee", "Cherokee", "Compass", "Renegade", "Gladiator", "Wrangler Unlimited", "Liberty"],
  "Subaru" => ["Outback", "Forester", "Crosstrek", "Impreza", "Legacy", "WRX", "Ascent", "BRZ"],
  "BMW" => ["3 Series", "5 Series", "X3", "X5", "X1", "4 Series", "X7", "7 Series"],
  # Add more models for other makes as required
}

vehicle_models_years.each do |make_name, models|
  make = VehicleMake.find_by(name: make_name)
  models.each do |model_name|
    vehicle_model = make.vehicle_models.create(name: model_name)
    (1980..2023).each do |year|
        vehicle_model.vehicle_years.create(year: year)
    end
  end
end

currencies = [
  "USD", 
  "CAD", 
  "EUR"
]

