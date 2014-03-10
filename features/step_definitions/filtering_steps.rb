
When(/^I enter minimum age of (.*?)$/) do |age|
  fill_in('age', :with => age)
  click_button('Display')
end

Then(/^I see a filtered list of players information$/) do
  page.should have_content("Dan")
  page.should have_content("Stephen")
  page.should have_no_content("Matt")
end
