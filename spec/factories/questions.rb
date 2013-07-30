# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    title "My String"
    user
    slug "my-questions-url"
    closed false
    closed_at "2013-07-30 09:25:05"
  end
end
