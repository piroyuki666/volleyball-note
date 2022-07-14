class SessionsController < ApplicationController
  def create
    user = User.find_by(name:params[:user][:name])
    @trainings = Training.where(user_id: session[:user_id])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to trainings_path
    else
      render "users/index"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
