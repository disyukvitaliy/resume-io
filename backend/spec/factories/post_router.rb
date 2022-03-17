FactoryBot.define do
  factory :post_router do
    sequence(:title) { |n| "title_#{n}" }
  end
end