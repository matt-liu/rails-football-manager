Given "I am on the games page" do
	pending
	visit games_path
end

When "I click on create game" do
	pending
	click_button('Create Game')
end

When "I input the game details" do
	pending
  fill_in('date', :with => "Mar 3 2014")
  fill_in('home_score', :with => "70")
  fill_in('away_score', :with => "73")
  find("#home_team").find(:xpath, 'option[0]').select_option
  find("#away_team").find(:xpath, 'option[1]').select_option
end

When(/^I submit the game$/) do
	pending
	click_button('Submit Game')
end

Then(/^I can view the details of the game$/) do
	pending
  page.should have_content("JCs")
  page.should have_content("Laterals")
  page.should have_content("70")
  page.should have_content("73")
end
