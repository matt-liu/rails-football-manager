class DirectoryPage
	include Capybara::DSL

	def navigate_to
  	visit '/players'
  	# players_path

	end

	def create(name)
	  FactoryGirl.create(:player, name: name)
	end

	def create_with_age(name, age)
		FactoryGirl.create(:player, name: name, age: age)
	end

	def create_with_team(team, name)
		team = FactoryGirl.create(:team, name: team)
	  FactoryGirl.create(:player, name: name, team_id: team.id)
	end

	def create_coach(name)
  	FactoryGirl.create(:coach, name: name)
  end

end
