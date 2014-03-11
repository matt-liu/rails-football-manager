require 'spec_helper'

describe "games/index" do
  before(:each) do
    assign(:teams, [
      FactoryGirl.create(:team),
      FactoryGirl.create(:team, name: 'Team2')
    ])
    assign(:games, [
      FactoryGirl.create(:game)
    ])
  end

  it "renders a list of games" do
    render
    assert_select "tr>td", :text => Game.all.first.home_team.name.to_s, :count => 1
    assert_select "tr>td", :text => Game.all.first.away_team.name.to_s, :count => 1
    assert_select "tr>td", :text => 50.to_s, :count => 1
    assert_select "tr>td", :text => 45.to_s, :count => 1
    assert_select "tr>td", :text => "date".to_s, :count => 1
  end
end
