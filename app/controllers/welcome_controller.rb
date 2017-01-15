class WelcomeController < ApplicationController
  def index
    flash[:alert] = "年轻的勇士，欢迎来到Killer's World"
  end
end
