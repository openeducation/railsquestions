# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :flagging do
    flaggable_type "MyString"
    flaggable_id 1
    flag_reason nil
  end
end
