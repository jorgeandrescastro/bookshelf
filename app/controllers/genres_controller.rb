class GenresController < ApplicationController

  def new
  end

  def create
    @genre = Genre.new(genre_params)
  end

  def index
    @genres = Genre.all.paginate(page: params[:page], per_page: 10)
  end

  def show
    @genre = Genre.friendly.find(params[:id])
  end

  private
    def genre_params
      params.require(:genre).permit(:name, :description)
    end
end
