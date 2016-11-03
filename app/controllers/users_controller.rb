class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
  	 @user = user.find(params[:id])
  end

  # def edit_address

  # end

  # def update_address

  # end
private


end
