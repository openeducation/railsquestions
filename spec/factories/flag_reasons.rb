# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :flag_reason do
    title "Off Topic"
    description "MyString"
    published true
  end
end
