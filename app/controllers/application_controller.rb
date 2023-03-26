class ApplicationController < ActionController::Base

private

  add_flash_types(:danger)

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def current_user?(user)
    current_user == user
  end
  helper_method :current_user?

  def current_user_admin?
    current_user && current_user.admin?
  end
  helper_method :current_user_admin?
  def require_signin
    unless current_user
      session[:intended_url] = request.url
      redirect_to signin_path, notice: "Please sign in first."
    end
  end

  def require_admin
    unless current_user_admin?
      redirect_to root_url, alert: "Unauthorized!"
    end
  end

  helper_method :require_admin
end