require 'spec_helper'

describe Team do
	context 'when creating a team' do
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

	context 'Team.get_name_by_id' do
  		it 'should return team name when passed team id' do
  			
  		end
  	end
end
