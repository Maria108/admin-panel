# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Master.create(
  first_name: "Masha",
  last_name: "Abasha",
  age: 21,
  salary: 18000,
  education: "Masters"
).build_user(email: "m@sha.com", password: "admin123").save
