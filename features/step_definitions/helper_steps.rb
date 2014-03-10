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

