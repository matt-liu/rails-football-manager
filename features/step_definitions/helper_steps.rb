#ToDo: user -> player
Given(/^there is a player named (.*?) $/) do |player|
  FactoryGirl.create(:player, name: player)
end
