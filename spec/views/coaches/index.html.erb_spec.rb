require 'spec_helper'

describe "coaches/index" do
  before(:each) do
    assign(:coaches, [
      stub_model(Coach,
        :name => "Name",
        :team => "Team",
        :title => "Title"
      ),
      stub_model(Coach,
        :name => "Name",
        :team => "Team",
        :title => "Title"
      )
    ])
  end

  it "renders a list of coaches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Team".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
