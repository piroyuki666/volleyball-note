class TrainingsController < ApplicationController

  def index
    @training = Training.new
    @trainings = Training.where(user_id: session[:user_id])
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
    params.require(:training).permit(:title, :time, :persons, :content).merge(user_id: session[:user_id])
  end
end
