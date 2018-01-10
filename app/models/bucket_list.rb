class BucketList < ApplicationRecord
  belongs_to :user
  has_many :bucket_list_movies
  has_many :movies, through: :bucket_list_movies

  def movies_attributes=(movies_attributes)
    self.movies.build(movies_attributes[0])
  end
end
