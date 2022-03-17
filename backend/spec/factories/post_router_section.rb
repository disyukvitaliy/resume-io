FactoryBot.define do
  factory :post_router_section do
    sequence(:title) { |n| "title_#{n}" }
  end
end