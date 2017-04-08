# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cohorts = Cohort.create(name: "Test Cohort")
Student.create(first_name: "Test", last_name: "1", age: 10, cohort: cohorts.first)
Student.create(first_name: "Test", last_name: "2", age: 20, cohort: cohorts.first)
