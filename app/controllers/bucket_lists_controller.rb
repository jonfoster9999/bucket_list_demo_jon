class BucketListsController < ApplicationController
  before_action :authenticate_user!

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
     @bucket_list = current_user.bucket_lists.build(bucket_list_params)
     if params[:bucket_list][:movie_ids] != "" && params[:bucket_list][:movie_ids] != nil
       @bucket_list.movies << Movie.find(params[:bucket_list][:movie_ids])
     end
     if @bucket_list.save
       redirect_to user_bucket_lists_path(current_user)
     else
       flash[:alert] = "Please make sure all fields are filled out correctly"
       redirect_to new_user_bucket_list_path
     end
   end

   def update
     @bucket_list = Bucketlist.find(params[:id])
     @bucket_list.update(bucket_list_params)
   end

   def show
     @bucket_list = BucketList.find_by(:id => params[:id])
   end

   def destroy
     @bucket_list = BucketList.find(params[:id])
     @bucket_list.destroy
     redirect_to user_bucket_lists_path(current_user)
   end

private

  def bucket_list_params
    params.require(:bucket_list).permit(:name, :movie_ids => [], :movies_attributes => [:name, :genre, :rating], :bucket_list_movies_attributes => :seen)
  end
end
