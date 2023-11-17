class List < ApplicationRecord
  #validations
  validates :name, presence: true
  validates :name, uniqueness: true


  # relationship
  has_many :bookmarks # @list.bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy # @list.movies
end
