Then(/^I see a list of teams that includes "(.*?)"$/) do |team|
  find('#teamHeader').should have_content("Teams")
  find('#teamTable').should have_content(team)
end

Then(/^I see a list of players that includes "(.*?)"$/) do |player|
  find('#playerHeader').should have_content("Players")
  find('#playerTable').should have_content(player)
end

When(/^I click on the link for "(.*?)"$/) do |link|
  page.should have_content(link)
  click_link(link)
end

Then(/^I see "(.*?)" in a list of players that are on "(.*?)"$/) do |player, team|
  find('#playerTable').should have_content(team)
  find('#playerTable').should have_content(player)
end

Then(/^I do not see "(.*?)" on the page$/) do |player|
  find('#playerTable').should have_no_content(player)
end
