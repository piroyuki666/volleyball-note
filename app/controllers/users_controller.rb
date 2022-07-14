class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to trainings_path
    else
      render "users/index"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :age_id, :sex_id)
  end

end
