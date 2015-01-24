class AuthorsController < ApplicationController

  def new
  end

  def index
    @authors = Author.all.paginate(page: params[:page], per_page: 10)
  end

  def show
    @author = Author.friendly.find(params[:id])
  end

end
