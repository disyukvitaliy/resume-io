class Post < ApplicationRecord
  validates :title, :body, presence: true
  validates :title, uniqueness: true

  scope :active, -> { where(active: true) }
end
