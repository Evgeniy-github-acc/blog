FactoryBot.define do
  factory :comment do
    association :user
    association :post
    sequence(:body) { |n| "comment body #{n}" }
  end
end
