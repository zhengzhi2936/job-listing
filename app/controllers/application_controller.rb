class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def is_admin
    if !current_user.admin?
      flash[:warning] = "You are not admin"
      redirect_to root_path
    end
  end
end
