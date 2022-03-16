FactoryBot.define do
  factory :post_router_item do
    post
    sequence(:path) { |n| "/path_#{n}" }
  end
end