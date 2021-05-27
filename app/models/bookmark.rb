class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates_associated :list, uniqueness: true
  validates_associated :movie, uniqueness: true
  validates_associated :movie, presence: true
  validates :movie, uniqueness: { scope: :list }
end
