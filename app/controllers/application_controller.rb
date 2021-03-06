class ApplicationController < ActionController::Base
  def require_is_admin
    if !current_user.admin?
      flash[:warning] = "You are not admin"
    redirect_to root_path
  end
  end
  protect_from_forgery with: :exception
end
