FactoryBot.define do
  factory :post_router_item do
    post
    sequence(:path) { |n| "/path_#{n}" }

    trait :with_router do
      router factory: :post_router
    end
  end
end