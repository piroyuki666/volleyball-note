class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :current_team

  def current_user
    if session[:user_id]
        current_user ||= User.find(session[:user_id])
    end
  end
  def current_team
    if session[:team_id]
        current_team ||= Team.find(session[:team_id])
    end
  end
end
