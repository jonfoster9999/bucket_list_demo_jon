class Movie < ApplicationRecord
  has_many :bucket_list_movies
  has_many :bucket_lists, through: :bucket_list_movies
end
