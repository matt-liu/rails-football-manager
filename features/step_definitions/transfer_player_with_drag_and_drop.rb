require 'selenium'

Given(/^I am on the transfer page$/) do
	pending
		visit transfer_path
end

Given(/^there is a team that does not own that player$/) do
	FactoryGirl.create(:team, name: "Future Bob Team")
end

When(/^I drag and drop that player onto that team$/) do
	@driver = Selenium::WebDriver.for :firefox
	draggable = @driver.find_element(:id, 'players_id')
	droppable = @driver.find_element(:id, 'teams_id')
	draggable.drag_to(droppable)
end

Then(/^that player will be assigned to that team$/) do
  pending
  	Player.all.first.team.name.should eql("Future Bob Team")
end

