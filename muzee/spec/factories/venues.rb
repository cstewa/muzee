# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :venue do
    about "MyText"
    lowest_price 1
    highest_price 1
    address "MyString"
  end
end
