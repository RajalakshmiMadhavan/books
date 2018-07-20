class ReturnController < ApplicationController
  def review
    @book  = Book.find(params[:id])
  end
end
