# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Boraughs ex
Boraughs.create(name: "City of London", area: "1,1197", median_income: "60,000", population: "11,000")

Boraughs.create(name: "Camden", area: "8,401583", median_income: "37,300", population: "101,000")

Boraughs.create(name: "Hackney", area: "7,3591071", median_income: "29,400", population: "112,000")

# Companies

Companies.create(id_boraughs: 1, name:"", address: "", year_trading: "", )

