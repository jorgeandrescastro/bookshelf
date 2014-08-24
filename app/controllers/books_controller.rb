class BooksController < ApplicationController

  def new
  end

  def create
    @book = Book.new(post_params)
    @book.save
    redirect_to @book
  end

  def show
    @book = Book.find(params[:id])
  end

  private
    def post_params
      params.require(:book).permit(:name, :description)
    end

end
