require 'selenium-webdriver'

Given(/^I am on the transfer page$/) do
	visit transfer_path
end

Given(/^there is a team that does not own that player$/) do
	FactoryGirl.create(:team, name: "Future Bob Team")
end

When(/^I drag and drop that player onto that team$/) do
	driver = Selenium::WebDriver.for :firefox
	driver.navigate.to "localhost:3000/transfer"
	element = driver.find_element(:name => 'player_name')
	target = driver.find_element(:name => 'team_name')
	driver.action.drag_and_drop(element, target).perform
end

Then(/^that player will be assigned to that team$/) do
	pending
  	Player.all.first.team.name.should eql("Future Bob Team")
end

