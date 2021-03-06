require 'spec_helper'

describe "games/index" do
  before(:each) do
    team1 = FactoryGirl.create(:team)
    team2 = FactoryGirl.create(:team, name: 'Team2')
    assign(:games, [
      FactoryGirl.create(:game, home_team_id: team1.id, away_team_id: team2.id)
    ])
  end

  it "renders a list of games" do
    render
    assert_select "tr>td", :text => Game.all.first.home_team.name.to_s+"(50) vs "+Game.all.first.away_team.name.to_s+"(45)", :count => 1
    assert_select "tr>td", :text => "2014-02-11".to_s, :count => 1
  end
end
