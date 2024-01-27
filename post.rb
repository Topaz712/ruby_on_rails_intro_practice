class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :published_at, presence: true
end
