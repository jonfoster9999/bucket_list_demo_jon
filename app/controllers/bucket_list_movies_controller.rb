class BucketListMoviesController < ApplicationController

  def create
    if current_user
      if @bucket_list = current_user.bucket_list
        bucket_list_movies.build(movie_id: self.id, bucket_list_id: bucket_list_id, seen: default)
      else @bucket_list = Bucket_list.create(user_id: current_user.id)
        bucket_list_movies.build(movie_id: self.id, bucket_list_id: bucket_list_id, seen: default)



end
