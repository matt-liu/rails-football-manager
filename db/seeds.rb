# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Player.destroy_all

# [
#   "Matt Liu",
#   "Dan Park",
#   "Nicolette Chambers",
#   "Julie Connors",
#   "Stephen Winter"
# ].each do |name|
#   Player.create name: name

Player.create(name: 'Dan', team: "TW", age: 27, number: 1)


  