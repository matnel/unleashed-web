class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  ## protect_from_forgery with: :exception

  before_filter :current_user

  def current_user
    @current_user = User.find_by_id( session[:user_id] )
  end

  def home
    redirect_to @current_user.avatar and return if @current_user
    render 'application/index'
  end
end
