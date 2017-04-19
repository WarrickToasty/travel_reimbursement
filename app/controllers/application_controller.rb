class ApplicationController < ActionController::Base

  before_filter :require_login
  protect_from_forgery with: :exception

  include SessionsHelper

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to '/login' # halts request cycle
    end
  end
end
