class DashboardController < ApplicationController
before_action do
  require_login!
end

  def hello
    @users = User.all
    @matters = Matter.all
    @user_matters = UserMatter.all
    @roles = Role.all
  end

  def dashboard
    @users = User.all
    @matters = Matter.all
    @user_matters = UserMatter.all
    @roles = Role.all
  end

  def client_dashboard
    @matter = Matter.find(params[:id])
  end
end
