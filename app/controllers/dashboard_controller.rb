class DashboardController < ApplicationController
  def hello
    @users = User.all
    @matters = Matter.all
    @user_matters = UserMatter.all
    @roles = Role.all
  end
end
