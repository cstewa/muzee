# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :blocked_time_slot do
    start_time "2013-12-29 19:41:00"
    duration 1.5
  end
end
