class TeamsController < ApplicationController
  def create
    team = Team.new(team_params)
    @trainings = Training.all
    if team.save
      session[:team_id] = team.id
      redirect_to root_path
    else
      render "trainings/index"
    end
  end

  private
  def team_params
    params.require(:team).permit(:name, user_ids: [])
  end
end
