# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :player do
  	association :team, :factory => :team
    name "Name"
    number 1
    age 25
  end
end
