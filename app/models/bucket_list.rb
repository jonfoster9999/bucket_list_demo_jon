class BucketList < ApplicationRecord
  belongs_to :user
  has_many :bucket_list_movies
  has_many :movies, through: :bucket_list_movies
end
