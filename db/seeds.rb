# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create(first_name: "Alberto",last_name: "Carreras")
Student.create(first_name: "Andrew",last_name: "Nichols")
SchoolClass.create(title: "Math",room_number: 1)
SchoolClass.create(title: "Catalan",room_number: 2)
