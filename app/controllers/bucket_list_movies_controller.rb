class BucketListMoviesController < ApplicationController

  def create
    if current_user
      if @bucket_list = current_user.bucket_list
        @bucket_list.add_movie(params[:movie_id])
        @bucket_list.save
      else @bucket_list = Bucket_list.create(user_id: current_user.id)
        @bucket_list.add_movie(params[:movie_id])
        @bucket_list.save
      end
      redirect_to user_bucket_lists_path
    end
    redirect_to movies_path
  end 




end
