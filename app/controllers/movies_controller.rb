class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    #@movie = Movie.find(params[:movie_id])
  end

  def highest_rating
    @movies = Movie.all
    self.all.select{|movie| movie.rating > 6}
  end

end
