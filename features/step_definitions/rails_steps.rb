Given(/^I am on the home page$/) do
  visit root_path
end

Given(/^I am on the Directory$/) do
  visit players_path
end

Given "there is a player with age $n and named $n" do |player_age, player_name|
	FactoryGirl.create(:player, name: player_name, age: player_age)
end

Given(/^there is a coach named (.*?)$/) do |name|
  FactoryGirl.create(:coach, name: name)
end

When(/^I click on the Player and Coach directory$/) do
	click_link("players_id")
end

When(/^I search for the name (\w+)$/) do |name|
  fill_in('search', :with => name)
  click_button('Search')
end

When(/^I search for the number (\d+)$/) do |number|
	fill_in('search', :with => number)
  click_button('Search')
end

When(/^I search for the name "(.*?)" and the number "(.*?)"$/) do |player_name, player_number|
  fill_in('name', :with => player_name)
  fill_in('number', :with => player_number)
  click_button('Find')
end

When(/^I enter incorrect information$/) do
  fill_in('name', :with => 'Dan')
  fill_in('number', :with => '2')
  click_button('Find')
end

When(/^I enter minimum age of (.*?)$/) do |age|
  fill_in('age', :with => age)
  click_button('Display')
end

Then(/^I see a filtered list of players information$/) do
  page.should have_content("Dan")
  page.should have_content("Stephen")
  page.should have_no_content("Matt")
end

When(/^I search for a player by their name$/) do
  fill_in('search', :with => 'Dan')
  click_button('Search')
end

When(/^I search for a player by their number$/) do
  fill_in('search', :with => '1')
  click_button('Search')
end

Then(/^I see the home page$/) do
  current_path.should == root_path
end

Then(/^I see a list of the players information$/) do
  page.should have_content("Dan")
  page.should have_content("TeamName")
  page.should have_content(1)
  page.should have_content(25)
end

Then(/^I see that player's information displayed$/) do
  page.should have_content("Dan")
end

Then(/^I see a list of the coaches information$/) do
  page.should have_content("Bill")
  page.should have_content("Head")
end

Then(/^I see an error message displayed$/) do
  page.should have_content("This player does not exist!")
end

Then(/^I see "(.*?)"'s information displayed$/) do |player_name|
  page.should have_content(player_name)
end

Given "there is a player on team $n named $n" do |team, player|
  team = FactoryGirl.create(:team, name: team)
  FactoryGirl.create(:player, name: player, team_id: team.id)
end

Then(/^I see a list of teams that includes "(.*?)"$/) do |team|
  find('#teamHeader').should have_content("Teams")
  find('#teamTable').should have_content(team)
end

Then(/^I see a list of players that includes "(.*?)"$/) do |player|
  find('#playerHeader').should have_content("Players")
  find('#playerTable').should have_content(player)
end

When(/^I click on the link for "(.*?)"$/) do |link|
  page.should have_content(link)
  click_link(link)
end

Then(/^I see "(.*?)" in a list of players that are on "(.*?)"$/) do |player, team|
  find('#playerTable').should have_content(team)
  find('#playerTable').should have_content(player)
end

Then(/^I do not see "(.*?)" on the page$/) do |player|
  find('#playerTable').should have_no_content(player)
end
