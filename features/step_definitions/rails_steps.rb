Given(/^I am on the home page$/) do
  visit root_path
end

Given(/^there is a user named "(.*?)"$/) do |player|
	FactoryGirl.create(:player, name: player)
end

Given(/^there is a coach named "(.*?)"$/) do |coach|
  FactoryGirl.create(:coach, name: coach)
end

When(/^I click on the Player and Coach directory$/) do
	click_link("players_id")
end

When(/^I search for the name (\w+)$/) do |player|
  fill_in('search', :with => player)
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

Then(/^I see "(.*?)" information displayed$/) do |player_name|
  page.should have_content(player_name)
end

Given(/^there is a player named "(.*?)" on team named "(.*?)"$/) do |player, team|
  team = FactoryGirl.create(:team, name: team)
  FactoryGirl.create(:player, name: player, team_id: team.id)
end

Then(/^I see a list of teams$/) do
  page.should have_content("Teams")
end

When(/^I click on the link for "(.*?)"$/) do |team|
  page.should have_content(team)
  click_link(team)
end

Then(/^I see "(.*?)" in a list of players that are on "(.*?)"$/) do |player, team|
  page.should have_content(team)
  page.should have_content(player)
end

Then(/^I do not see "(.*?)" on the page$/) do |player|
  page.should have_no_content(player)
end