class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:notice] = "danger|Login failed."
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "success|You are now logged out."
    redirect_to login_path
  end
end
