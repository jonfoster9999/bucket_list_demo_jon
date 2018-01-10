class BucketListMoviesController < ApplicationController

  def new
    @bucket_list_movie= BucketListMovie.new(bucket_list_id: params[:bucket_list_id], movie_id: params[:movie_id])
  end




end
