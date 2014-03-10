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


