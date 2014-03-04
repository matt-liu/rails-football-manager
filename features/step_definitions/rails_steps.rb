Given(/^I am on the home page$/) do
  visit root_path
end
 

When(/^there is a user named Dan$/) do
	FactoryGirl.create(:player, name: "Dan")
end

When(/^I click on the Players button$/) do
	click_link("players_id")
end
  	
Then(/^I should see a list of the players information$/) do
  page.should have_content("Dan")
  page.should have_content("TW")
  page.should have_content(1)
  page.should have_content(25)
end


When(/^I search for a player by their name$/) do
	fill_in('search', :with => 'Dan')
	click_button('Search')
end



Then(/^I see that player's information displayed$/) do
 	page.should have_content("Dan")
end