class GenresController < ApplicationController

  def new
  end

  def create
    @genre = Genre.new(genre_params)
  end

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  private
    def genre_params
      params.require(:genre).permit(:name, :description)
    end
end
