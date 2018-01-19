class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    #@movie = Movie.find(params[:movie_id])
  end

  def new
    if current_user
      @movie = Movie.new
    else
      flash[:alert] = "Please Log In First"
      redirect_to new_user_session_path
    end
  end

  def create
     @movie = movie.build(movie_params)
     if @movie.save
       redirect_to movies_path
     else
       flash[:alert] = "Please make sure all fields are filled out correctly"
       redirect_to new_movie_path
     end
   end

  def show
    @movies = Movie.all
    @highest_rated = @movies.where("rating > 8.5")
  end

  def highest_rating
    @movies = Movie.all
    @highest_rated = @movies.where("rating > 8.5")
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :genre, :rating)
  end
end
