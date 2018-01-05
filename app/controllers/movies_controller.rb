class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    @bucket_list = Bucket_List.find(params[:id])
    @movie = Movie.find(params[:id])
  end

end
