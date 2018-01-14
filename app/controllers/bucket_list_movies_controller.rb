class BucketListMoviesController < ApplicationController

  def new
    @bucket_list_movie= BucketListMovie.new(bucket_list_id: params[:bucket_list_id], movie_id: params[:movie_id], seen: params[:seen])
  end

  def create
    @bucket_list = BucketList.find_by(:id => params[:id])
    if current_user
      @bucket_list_movie= BucketListMovie.new(bucket_list_id: params[:bucket_list_id], movie_id: params[:movie_id], seen: params[:seen])
      @bucket_list_movie.save
      @bucket_list.movies.all << @bucket_list_movie
      redirect_to user_bucket_lists_path(current_user)
    else
      flash[:alert] = "Please make sure all fields are filled out correctly"
      redirect_to new_bucket_list_movie_path(movie_id: movie.id)
    end
  end
end
