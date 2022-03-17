class PostRouterSection < ApplicationRecord
  validates :title, presence: true, uniqueness: true
end
