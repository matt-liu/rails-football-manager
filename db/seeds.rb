# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.destroy_all
Player.destroy_all
Coach.destroy_all

load_player = YAML.load_file(Rails.root.join("config","players.yml"))
load_coach= YAML.load_file(Rails.root.join("config","coaches.yml"))
load_team= YAML.load_file(Rails.root.join("config","teams.yml"))

load_team.each { |array|
		Team.create name: array[0]
	}

load_player.each { |array|
		Player.create name: array[0], age: array[1], number: array[2], team: Team.where(:name == array[3]).first
	}

load_coach.each { |array|
		Coach.create name: array[0], title: array[1], team: Team.where(:name == array[2]).first
	}


