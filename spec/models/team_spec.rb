require 'spec_helper'

describe Team do
  it 'should not be valid without a name' do
  	invalid_team = FactoryGirl.build(:team, name: nil)
  	puts "#{invalid_team.inspect}"
  	invalid_team.valid?.should be(false)
  end

  it 'should be valid with a name' do
  	valid_team = FactoryGirl.build(:team)
  	valid_team.valid?.should be(true)
  end
end
