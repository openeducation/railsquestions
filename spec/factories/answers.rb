# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    body "Can someone send me a link to the first question on Stack Overflow?"
    user
    question
  end
end
