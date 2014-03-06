# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :coach do
    name "Name"
  	association :team, :factory => :team
    title "Head Coach"
  end
end
