class GenresController < ApplicationController

  def new
  end

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end
end
