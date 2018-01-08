class BucketList < ApplicationRecord
  belongs_to :user
  has_many :bucket_list_movies
  has_many :movies, through: :bucket_list_movies

  def movie_attributes=(movie)
    self.movie = Movie.find_or_create_by(name: movie.name)
    self.movie.update(movie)
  end
end
