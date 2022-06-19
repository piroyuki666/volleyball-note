class TrainingsController < ApplicationController

  def index
    @user = User.new
    @training = Training.new
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
    params.require(:training).permit(:title, :time, :persons, :content, :fatigue_id).merge(user_id: session[:user_id])
  end
end
