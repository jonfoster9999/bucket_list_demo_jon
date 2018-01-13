class Movie < ApplicationRecord
  has_many :bucket_list_movies
  has_many :bucket_lists, through: :bucket_list_movies
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :genre, presence: true
  validates :rating, presence: true
end
