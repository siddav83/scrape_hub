# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Borough.destroy_all
Category.destroy_all
Company.destroy_all
# Boraughs ex
puts "Creating Boroughs..."
westmister = { name: "Westminster", area: 11197, median_income: 60000, population: 11000 }
hackney = { name: "Camden", area: 11197, median_income: 60000, population: 11000}
camden = { name: "Hackney", area: 73591071, median_income: 29400, population: 112000 }

# Companies
puts "Creating companies..."
roka = { name: "Roka", address: "Holborn", borough_id: 1 }
dishoom = { name: "Dishoom", address: "Kings Cross", borough_id: 2 }
boxpark = { name: "Boxpark", address: "Shoreditch", borough_id: 3 }

virgin_active = { name: "Virgin Active", address: "Hackney", borough_id: 2 }
yogi = { name: "Yogi", address: "Kentish Town", borough_id: 3 }
oasis = { name: "Oasis sports Center", address: "Holborn", borough_id: 1  }

starbucks = { name: "Starbucks", address: "Euston", borough_id: 3 }
saints = { name: "Saints", address: "Camden", borough_id: 3 }
benugo = { name: "Benugo", address: "Hoxton", borough_id: 2 }

# Category
puts "Creating categories..."
categories = [{ name: "resturant", }, { name: "sports and recreation" }, { name: "cafe" }]

# iterator to display whats created
puts "BOROUGHS"
[ westmister, hackney, camden ].each do |attributes|
  borough = Borough.create!(attributes)
  puts "Created #{borough.name}"
end

puts "CATEGORIES"
categories.each do |attributes|
  category = Category.create!(attributes)
  puts "Created #{category.name}"
end

puts "COMPANIES"
[ roka, dishoom, boxpark, virgin_active, yogi, oasis, starbucks, saints, benugo ].each do |attributes|
  company = Company.create!(attributes)
  puts "Created #{company.name}"
end

puts "Finished!"


