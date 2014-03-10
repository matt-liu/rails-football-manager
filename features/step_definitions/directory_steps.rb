directory_page = DirectoryPage.new

Given(/^I am on the Players and Coaches Directory$/) do
	directory_page.navigate_to
end

Given "there is a player named $n" do |player|
  directory_page.create(player)
end

Given "there is a player with age $n and named $n" do |age, name|
  directory_page.create_with_age(name, age)
end

Given(/^there is a coach named (.*?)$/) do |name|
  directory_page.create_coach(name)
end

Given "there is a player on team $n named $n" do |team, name|
  directory_page.create_with_team(team, name)
end

Then(/^I see a list of the players information$/) do
  find('#playerTable').should have_content("Dan")
  find('#playerTable').should have_content("TeamName")
  find('#playerTable').should have_content(1)
  find('#playerTable').should have_content(25)
end

Then "I see $n's information displayed" do |player_name|
  page.should have_content(player_name)
end

Then(/^I see a list of the coaches information$/) do
  page.should have_content("Bill")
  page.should have_content("Head")
end
