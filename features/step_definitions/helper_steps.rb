#ToDo: user -> player
Given "there is a player named $n" do |player|
  FactoryGirl.create(:player, name: player)
end
