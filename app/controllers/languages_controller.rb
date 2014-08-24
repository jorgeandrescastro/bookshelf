class LanguagesController < ApplicationController
  def new
  end

  def index
    @languages = Language.all
  end

  def show
    @language = Language.find(params[:id])
  end
end
