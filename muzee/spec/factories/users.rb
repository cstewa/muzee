# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first_name "MyString"
    last_name "MyString"
    photo "MyString"
    profile_id 1
    profile_type "MyString"
  end
end
