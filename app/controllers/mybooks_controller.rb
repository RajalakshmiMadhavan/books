class MybooksController < ApplicationController
  def my_books
    @user=User.find_by_email(current_user.email)
  end
end
