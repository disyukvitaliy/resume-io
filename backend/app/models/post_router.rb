class PostRouter < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  has_many :items, class_name: 'PostRouterItem', foreign_key: :router_id
end
