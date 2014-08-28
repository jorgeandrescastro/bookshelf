class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :get_latest_books 

  def get_latest_books
  	@latest_books = Book.latest(Book::NUMBER_OF_LATEST_BOOKS)
  end
end
