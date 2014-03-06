require 'spec_helper'

describe Player do
  it 'should not be valid without all fields' do
  	invalid_player = FactoryGirl.build(:player, name: '', age: nil, number: nil)
  	invalid_player.valid?.should be(false)
  end

  it 'should be valid with all fields' do
  	valid_player = FactoryGirl.build(:player)
  	valid_player.valid?.should be(true)
  end

end
