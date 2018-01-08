class BucketListsController < ApplicationController

  def index
    @bucket_lists = Bucket_list.all
  end

  def new
    if current_user
      @bucket_list = Bucket_list.new
      @bucket_list.movies.build
    else
      flash[:alert] = "Please Log In First"
end
