require 'spec_helper'

describe "players/show" do
  before(:each) do
    assign(:player, FactoryGirl.create(:player))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/TeamName/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
