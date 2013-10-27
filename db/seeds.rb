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
x.save

x = Task.new
x.content = "Call Paul"
x.owner = "Lukas"
x.save

x = Task.new
x.content = "Call Pete"
x.owner = "Lukas"
x.save

x = Task.new
x.content = "Buy Milk"
x.owner = "Marlene"
x.save

x = Task.new
x.content = "Talk to Neil"
x.owner = "Mike"
x.save

x = Task.new
x.content = "Teach Lukas"
x.owner = "Garrett"
x.save

x = Task.new
x.content = "Upload to Github"
x.owner = "Chance"
x.save
