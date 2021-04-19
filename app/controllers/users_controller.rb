class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create params.require(:user).permit(:name, :password, :password_confirmation)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to '/welcom/welcom'
    else
      redirect_to new_user_url
    end
  end
end
