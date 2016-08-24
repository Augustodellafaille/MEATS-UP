class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
  	 @user = current_user
  end

  # def edit_address

  # end

  # def update_address

  # end
private


end
