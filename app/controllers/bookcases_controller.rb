class BookcasesController < ApplicationController

  before_filter :back_to_login, if: lambda { !current_user }

  def new
  end

  def index    
  end

  def show    
  end

  private 
    def back_to_login
      redirect_to new_user_session_path 
    end

end
