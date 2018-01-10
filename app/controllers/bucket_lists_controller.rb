class BucketListsController < ApplicationController

  def index
    @bucket_lists = BucketList.all
  end

  def new
    @movies = Movie.all
    if current_user
      @bucket_list = BucketList.new
      @bucket_list.movies.build
    else
      flash[:alert] = "Please Log In First"
      redirect_to new_user_session_path
    end
  end

  def create
    @bucket_list = BucketList.new(bucket_list_params)
    if params[:bucket_list][:movie_ids] != "" && params[:bucket_list][:movie_ids] != nil
      @bucket_list.movies << Movie.find(params[:bucket_list][:movie_ids])
    end
    if @bucket_list.save
      redirect_to user_bucket_lists_path
    else
      flash[:alert] = "Please make sure all fields are filled out correctly"
    end
  end

private

  def bucket_list_params
    params.require(:bucket_list).permit(:name, :movie_ids => [], :movies_attributes => [:name, :genre, :rating])
  end
end
