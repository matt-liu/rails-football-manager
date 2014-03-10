class HomePage
include Capybara::DSL

	def navigate_to
		visit '/'
		#TODO: root_url
	end

	def create(team)
		FactoryGirl.create(:team, name: team)
	end

	def click_directory_link
		click_link("players_id")
	end

end
