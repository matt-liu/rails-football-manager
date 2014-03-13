require 'spec_helper'

describe "games/new" do
  before(:each) do
    assign(:game, stub_model(Game,
      :home_team_id => 1,
      :away_team_id => 2,
      :home_team_score => 1,
      :away_team_score => 1,
      :date => "2014-02-11"
    ).as_new_record)
  end

  it "renders new game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", games_path, "post" do
      assert_select "input#game_home_team_score[name=?]", "game[home_team_score]"
      assert_select "input#game_away_team_score[name=?]", "game[away_team_score]"
    end
  end
end
