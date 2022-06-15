class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    @trainings = Training.all
    if user.save
      session[:user_id] = user.id
      redirect_to root_path, notice: "新規登録に成功しました"
    else
      render "trainings/index", notice: "新規登録に失敗しました"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :age_id, :sex_id)
  end

end
