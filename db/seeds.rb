# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

x = Task.new
x.content = "Buy a jacket."
x.owner = "Lukas"
x.important = false
x.save

x = Task.new
x.content = "Call Paul"
x.owner = "Lukas"
x.important = false
x.save

x = Task.new
x.content = "Practise Rails"
x.owner = "Lukas"
x.important = true
x.save
