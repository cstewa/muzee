# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :venue_rating do
    venue_id 1
    rating 1
    venue_rater_id 1
    venue_rater_type 1
  end
end
