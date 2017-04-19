class SessionsController < ApplicationController
  skip_before_filter :require_login

  def new
    @disable_nav = true
  end

  def create

    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
        log_in user
        @employee = Employee.where('user_id = ?', session[:user_id]).take
        if @employee.nil?
          redirect_to '/employees/new'
        else
          redirect_to '/home'
        end

    else
      flash.now[:danger] = 'Invalid email/password combination'
      redirect_to '/login'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
