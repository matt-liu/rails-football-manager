require 'spec_helper'

describe "players/index" do
  before(:each) do
    assign(:players, [
      stub_model(Player,
        :name => "Name",
        :team => "Team",
        :number => 1,
        :age => 2
      ),
      stub_model(Player,
        :name => "Name",
        :team => "Team",
        :number => 1,
        :age => 2
      )
    ])

    assign(:coaches, [
      stub_model(Coach,
        :name => "Name",
        :team => "Team",
        :title => "Head"
      )
    ])
  end

  it "renders a list of players and coaches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tbody>tr>td", :text => "Name".to_s, :count => 3
    assert_select "tbody>tr>td", :text => "Team".to_s, :count => 3
    assert_select "tbody>tr>td", :text => "Head".to_s, :count => 1
    assert_select "tbody>tr>td", :text => 1.to_s, :count => 2
    assert_select "tbody>tr>td", :text => 2.to_s, :count => 2
  end
end
