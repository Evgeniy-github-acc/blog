FactoryBot.define do
  factory :post do
    association :user
    title { 'Lorem' }
    content { 'ipsum' }

    factory :post_with_comments do
      after :create do |post, evaluator|
        create_list :comment, 3, post: post
      end
    end
  end
end
