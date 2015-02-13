class BookcasesController < ApplicationController

  before_filter :back_to_login, if: lambda { !current_user }

  def create
    @bookcase = Bookcase.new
    @bookcase.name = params[:bookcase][:name] 
    @bookcase.user = current_user

    respond_to do |format|
      if @bookcase.save
        format.html { redirect_to @bookcase, notice: 'Bookcase was successfully created.' }
        format.js   {}
        format.json { render json: @bookcase, status: :created, location: @bookcase }
      else
        format.html { render action: "create" }
        format.json { render json: @bookcase.errors, status: :unprocessable_entity }
      end
    end
  end

  def index    
    @current_user    
  end

  def show 
    @bookcase = Bookcase.find(params[:id])  
  end

  def add_book
    @book = Book.find(params[:book_id])
    params[:bookcase].each do |bookcase_id|
      bookcase = Bookcase.find(bookcase_id)
      bookcase.books << @book
    end

    respond_to do |format|
      format.html { redirect_to @book, notice: 'Bookcase was successfully created.' }
      format.js   {}
      format.json { render json: @book }
    end
  end

  private 
    def back_to_login
      redirect_to new_user_session_path 
    end

end
