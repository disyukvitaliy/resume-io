FactoryBot.define do
  factory :post do
    sequence(:title) { |n| "title_#{n}" }
    sequence(:body) { |n| "body_#{n}" }

    trait :active do
      active { true }
    end
  end
end