class MoviesController < ApplicationController
  def show()
    id = params[:id] # retrieve movie ID from URI route
#    @movie = Movie.find(:all, :order => "title ASK")
    @movie = Movie.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end
  
  def index
     @all_ratings = ["G", "PG", "PG-13", "R"]
    # # @title_class = "unselect"
    # # @date_class = "unselect"
    # if params[:sort] == "title"
    #   @movies = Movie.order("title ASC")
    #   # session[:sort] = "title"
    #   # @title_class = "hilite"
    #   # @date_class = "unselect"
    # else if params[:sort] == "date"
    #        @movies = Movie.order("release_date ASC")
    #        # session[:sort] = "date"
    #        # @title_class = "unselect"
    #        # @date_class = "hilite"
    #      else
    #        @movie = Movie.all
    #        # session.clear
    #        # @title_class = "unselect"
    #        # @date_class = "unselect"
    #      end  
    # end  
       @movie = Movie.all
  end

  def new
    # default: render 'new' template
  end

  def create
    @movie = Movie.create!(params[:movie])
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(params[:movie])
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end

end
