class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
      @range = params[:range]
      @word = params[:word]
      @search = params[:search]
    
      if @range == 'User'
          @users = User.looks(@word, @search)
      else
          @books = Book.looks(@word, @search)
      end
  
      render "search_result"

  end
  
  


end
