class TeamsessionsController < ApplicationController
  def new
  end

  def create
    team = Team.find_by_name(params[:name])
    @trainings = Training.all
    if team
      session[:team_id] = team.id
      redirect_to root_path, notice: "ログインに成功しました"
    else
      flash.now[:alert] = "名前かパスワードが間違っています"
      render "trainings/index"
    end
  end

  def destroy
    session[:team_id] = nil
    redirect_to root_path, notice: "ログアウトしました"
  end
end