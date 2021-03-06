class ApplicationController < ActionController::Base

  def hello
    if session[:name] == nil
      redirect_to login_path
    end
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end