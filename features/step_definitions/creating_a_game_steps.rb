Given "I am on the games page" do
	visit games_path
end

When "I click on create game" do
	click_link('New Game')
end

When "I input the game details" do
  fill_in('game[home_team_score]', :with => "70")
  select("JCs", :from => "Home team")
  select("Laterals", :from => "Away team")
  fill_in('game[away_team_score]', :with => "73")
  select("2012", :from => "game[date(1i)]")
  select("May", :from => "game[date(2i)]")
  select("4", :from => "game[date(3i)]")
end

When(/^I submit the game$/) do
	click_button('Create Game')
end

Then(/^I can view the details of the game$/) do
  page.should have_content("JCs")
  page.should have_content("Laterals")
  page.should have_content("70")
  page.should have_content("73")
end
