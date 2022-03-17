class PostRouterItem < ApplicationRecord
  validates :post, :path, presence: true
  validates :path, uniqueness: true

  belongs_to :post
  # to prevent constructions like post_router_item.post_router.post_router_items
  # too many duplications of post and router
  belongs_to :router, class_name: 'PostRouter', optional: true
  belongs_to :section, class_name: 'PostRouterSection', optional: true
end
