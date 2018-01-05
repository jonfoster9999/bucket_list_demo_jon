class BucketList < ApplicationRecord
  belongs_to :user
  has_many :bucket_list_movies
  has_many :movies, through: :bucket_list_movies

  def add_movie(movie_id)
    bucket_list_movies.build(movie_id: self.id, bucket_list_id: bucket_list_id, seen: default)
  end
end
