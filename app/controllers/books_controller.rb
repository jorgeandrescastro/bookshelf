class BooksController < ApplicationController

  def new
  end

  def index
    @books = Book.all.paginate(page: params[:page], per_page: 10)
  end

  def create
    @book = Book.new(post_params)
    if @book.save
      redirect_to @book
    else
      render 'new'
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  private
    def post_params
      params.require(:book).permit(:name, :description, :isbn, :published_year)
    end

end
