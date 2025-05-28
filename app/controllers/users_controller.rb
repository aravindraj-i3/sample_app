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
      # ... (successful save handling) ...
    else
      render 'new'
    end
  end

  def index # <--- ADD THIS ACTION
    @users = User.all # This will fetch all users from the database
    # By convention, Rails will then look for app/views/users/index.html.erb to render
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end