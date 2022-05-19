class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie_id, uniqueness: { scope: :list, message: "It's already on the list" }
  validates :comment, presence: true, length: { minimum: 6 }
end
