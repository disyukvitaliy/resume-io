class PostRouterItem < ApplicationRecord
  validates :post, :path, presence: true
  validates :path, uniqueness: true

  belongs_to :post
end
