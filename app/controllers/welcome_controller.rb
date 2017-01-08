class WelcomeController < ApplicationController
  def index
    flash[:warning] = "这是我的第一次信息！"
  end
end
