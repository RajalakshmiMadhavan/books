class HomeController < ApplicationController

  def index
  end

  def Library
    @flag=0
    @user=User.find_by_email("vijayadmin@gmail.com")
    if(@user.user_type==1)
      @flag=1
    end
  end

end
