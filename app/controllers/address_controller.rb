class AddressController < ApplicationController
  def Address
  end

  def update_address
    @address=params[:Address].to_s
    @user=User.find_by_email(current_user.email)
    @user.update_attribute(:Address,@address)
  end
end
