# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artist do
    track "MyString"
    lowest_price 1
    highest_price 1
  end
end
