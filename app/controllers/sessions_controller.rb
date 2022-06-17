class SessionsController < ApplicationController
  def create
    user = User.find_by_name(params[:name])
    @trainings = Training.all
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      render "trainings/index"
    end
  end

  def destroy
    session[:user_id] = nil
    session[:team_id] = nil
    redirect_to root_path
  end
end
