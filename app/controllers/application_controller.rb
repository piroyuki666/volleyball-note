class ApplicationController < ActionController::Base
  helper_method :current_user
  before_action :basic_auth

  def current_user
    if session[:user_id]
      current_user ||= User.find(session[:user_id])
    end
  end

  private
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end
