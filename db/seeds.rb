# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




s1 = Student.create(first_name: "Tony", last_name: "Reiser")
s2 = Student.create(first_name: "Geb", last_name: "Daukas")
s3 = Student.create(first_name: "Jack", last_name: "Ficke")


sc1 = SchoolClass.create(title: "Psychology 101", room_number: 21)
sc1 = SchoolClass.create(title: "Advanced Physics", room_number: 3)
