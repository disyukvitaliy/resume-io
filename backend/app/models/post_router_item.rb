class PostRouterItem < ApplicationRecord
  validates :post, :path, presence: true
  validates :path, uniqueness: true

  belongs_to :post
  belongs_to :router, class_name: 'PostRouter', optional: true
end
