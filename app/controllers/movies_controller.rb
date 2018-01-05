class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    #@movie = Movie.find(params[:movie_id])
  end

end
