# app/controllers/users_controller.rb

class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user

    else
      #debugger
      render 'new' # Render the 'new' template again if save fails (with errors)
    end
  end

  private # This 'private' keyword is on its own line, at the end of the class

    def user_params # This method is defined at class level, after 'private'
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end