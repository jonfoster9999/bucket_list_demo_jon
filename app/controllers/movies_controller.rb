class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    #@movie = Movie.find(params[:movie_id])
  end

  def show
    @movies = Movie.all
    @highest_rated = @movies.where("rating > 8.5")
  end

  def highest_rating
    @movies = Movie.all
    @highest_rated = @movies.where("rating > 8.5")
  end

end
