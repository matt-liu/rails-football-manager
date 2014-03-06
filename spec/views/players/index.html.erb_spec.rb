require 'spec_helper'

describe "players/index" do
  before(:each) do
      
    assign(:players, [
      FactoryGirl.create(:player),
      FactoryGirl.create(:player)
    ])

    assign(:coaches, [
      FactoryGirl.create(:coach)
    ])

  end

  it "renders a list of players and coaches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tbody>tr>td", :text => "Name".to_s, :count => 3
    assert_select "tbody>tr>td", :text => "TeamName".to_s, :count => 3
    assert_select "tbody>tr>td", :text => "Head Coach".to_s, :count => 1
    assert_select "tbody>tr>td", :text => 1.to_s, :count => 2
    assert_select "tbody>tr>td", :text => 25.to_s, :count => 2
  end
end
