# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :player do
    name "testName"
    team_id 3
    number 1
    age 25
  end
end
