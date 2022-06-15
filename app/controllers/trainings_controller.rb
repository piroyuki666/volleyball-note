class TrainingsController < ApplicationController

  def index
    @user = User.new
    @training = Training.new
    if session[:user_id]
      @login_user = User.find(session[:user_id])
    end
    @trainings = Training.all
  end
  def create
    training = Training.new(training_params)
    if training.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def training_params
    params.require(:training).permit(:title, :time, :persons, :content, :fatigue_id)
  end
end
