require 'spec_helper'

describe "coaches/show" do
  before(:each) do
    assign(:coach, FactoryGirl.create(:coach))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/TeamName/)
    rendered.should match(/Title/)
  end
end
