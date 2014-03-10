require 'spec_helper'

describe Team do
	let(:valid_team) { FactoryGirl.build(:team) }

	context 'when creating a team' do
		it 'should not be valid without a name' do
			invalid_team = FactoryGirl.build(:team, name: nil)
	  		puts "#{invalid_team.inspect}"
	  		invalid_team.valid?.should be(false)
	  	end

		it 'should be valid with a name' do
		  	valid_team.valid?.should be(true)
		end
	end

	context 'Team.get_name_by_id' do
  		it 'should return team name when passed team id' do
  			
  		end
  	end

  	let(:head_coach) { FactoryGirl.create(:coach) }

  	context '#getHeadCoachName' do
	  	context 'there is no "Head Coach"' do
	  		it 'should return "N/A"' do
	  			valid_team.getHeadCoachName.should eq('N/A')
	  		end
	  	end
	  	context 'there is a "Head Coach"' do
	  		it 'should return "Name"' do
	  			head_coach.team.getHeadCoachName.should eq('Name')
	  		end
	  	end
	end
end
