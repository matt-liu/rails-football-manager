# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :game do
    home_team_id 1
    away_team_id 2
    home_team_score 50
    away_team_score 45
    date "date"
  end
end
