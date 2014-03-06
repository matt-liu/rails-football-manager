Given(/^I am on the home page$/) do
  visit root_path
end

When(/^there is a user named (\w+)$/) do
	FactoryGirl.create(:player, name: "Dan")
end

When(/^I click on the Player and Coach directory$/) do
	click_link("players_id")
end

When(/^I search for the name (\w+)$/) do
  fill_in('search', :with => 'Dan')
  click_button('Search')
end

When(/^I search for the number (\d+)$/) do
	fill_in('search', :with => '1')
  click_button('Search')
end

When(/^I search for the name (\w+) and the number (\d+)$/) do
  fill_in('name', :with => 'Dan')
  fill_in('number', :with => '1')
  click_button('Find')
end

When(/^I enter incorrect information$/) do
  fill_in('name', :with => 'Dan')
  fill_in('number', :with => '2')
  click_button('Find')
end

When(/^there is a coach named (\w+)$/) do
  FactoryGirl.create(:coach)
end

Then(/^I see the home page$/) do
  current_path.should == root_path
end

Then(/^I see a list of the players information$/) do
  page.should have_content("Dan")
  page.should have_content("TW")
  page.should have_content(1)
  page.should have_content(25)
end

Then(/^I see a list of the coaches information$/) do
  page.should have_content("Bill")
  page.should have_content("Head")
end

Then(/^I see that an error message displayed$/) do
  page.should have_content("This player does not exist!")

end

Then(/^I see (\w.+) information displayed$/) do
  page.should have_content("Dan")
end




