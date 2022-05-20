class Movie < ApplicationRecord
  has_many :bookmarks
  has_one_attached :photo

  validates :title, uniqueness: true
  validates :overview, :title, presence: true
end
