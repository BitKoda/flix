class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email_or_username]) || User.find_by_username(params[:email_or_username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to (session[:intended_url] || user), 
        notice: "Welcome back, #{user.name}"
      session[:intended_url] = nil
    else
      flash.now[:alert] = "Invalid email or username/password combination."
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to movies_path, notice: "Signed out successfully. See you again soon!"
  end
end
