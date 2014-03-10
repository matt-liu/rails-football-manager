home_page = HomePage.new

Given(/^I am on the home page$/) do
  home_page.navigate_to
end

Given "there is a team named $n" do |team|
  home_page.create(team)
end

When(/^I navigate to the Player and Coach directory$/) do
	home_page.click_directory_link
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

Then(/^I see an error message displayed$/) do
  page.should have_content("This player does not exist!")
end



