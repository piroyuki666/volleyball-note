class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    @trainings = Training.all
    if user.save
      session[:user_id] = user.id
      redirect_to root_path
    else
      render "trainings/index"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :age_id, :sex_id, team_ids: [])
  end

end
