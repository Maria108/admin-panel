# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create admins.
Admin.create(
  first_name: "Masha",
  last_name: "Abasha",
).build_user(email: "m@sha.com", password: "123456").save

# Create masters.
Master.create(
  first_name: "Yoda",
  last_name: "Das",
  age: 120,
  salary: 108000,
  education: "PhD",
).build_user(email: "m1@sha.com", password: "123456").save

Master.create(
  first_name: "Dz",
  last_name: "Mitry",
  age: 33,
  salary: 10816,
  education: "PhD",
).build_user(email: "m2@sha.com", password: "123456").save

# Create courses.
Course.create(
  name: "Nodejs Intensive",
  hours: 120,
)

Course.create(
  name: "Rails Intensive",
  hours: 60,
)

Course.create(
  name: "React Intensive",
  hours: 80,
)

# Create cohorts.
Cohort.create(
  name: "Edge Case",
  start_date: "2018-05-03",
  end_date: "2018-08-03",
  course_id: 1,
  master_id: 1,
)

Cohort.create(
  name: "Second Case",
  start_date: "2018-05-03",
  end_date: "2018-08-03",
  course_id: 2,
  master_id: 2,
)

# Create students.
Student.create(
  first_name: "Krishna",
  last_name: "Das",
  age: 19,
  education: "PhD",
).build_user(email: "s1@sha.com", password: "123456").save

Student.create(
  first_name: "Shyam",
  last_name: "Das",
  age: 22,
  education: "PhD",
).build_user(email: "s2@sha.com", password: "123456").save

