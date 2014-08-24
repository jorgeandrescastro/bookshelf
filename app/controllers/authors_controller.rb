class AuthorsController < ApplicationController

  def new
  end

  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

end
