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
	element = driver.find_element(id: 'handle')
	target = driver.find_element(name: "The Laterals")
	driver.action.drag_and_drop(element, target).perform
	driver.quit
end

Then(/^that player will be assigned to that team$/) do
  	Player.all.first.team.name.should eql("Future Bob Team")
end

