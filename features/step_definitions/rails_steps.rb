Given(/^I am on the home page/) do
  visit root_path
end
 
  	
Then(/^I should see Football Manager/) do
  page.should have_text("FOOTBALL MANAGER")
end
