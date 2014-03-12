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

		let!(:team1) { FactoryGirl.create(:team,  name: 'team1' ) }
		let!(:team2) { FactoryGirl.create(:team, name: 'team2') }

  	let!(:game1) { FactoryGirl.create(:game, home_team: team1, away_team: team2, home_team_score: 15, away_team_score: 14 ) }
  	let!(:game2) { FactoryGirl.create(:game, home_team: team1, away_team: team2, home_team_score: 15, away_team_score: 15) }
  	let!(:game3) { FactoryGirl.create(:game, home_team: team1, away_team: team2, home_team_score: 7, away_team_score: 14 ) }

		context 'it should have wins, losses, and ties' do
			it 'should return number of wins' do
				team1.wins.should eq(1)
			end
			it 'should return number of losses' do
				team1.losses.should eq(1)
			end
			it 'should return number of ties' do
				team1.ties.should eq(1)
			end
			it 'should return number of games' do
				team1.gamesPlayed.count.should eq(3)
			end
		end
end
