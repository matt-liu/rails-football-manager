# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Player.destroy_all
Coach.destroy_all

load_player = YAML.load_file(Rails.root.join("config","players.yml"))
load_coach= YAML.load_file(Rails.root.join("config","coaches.yml"))

load_player.each { |array|
		Player.create name: array[0], age: array[1], number: array[2], team: array[3]
	}

load_coach.each { |array|
		Coach.create name: array[0], team: array[1], title: array[2]
	}


