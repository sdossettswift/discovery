class DashboardController < ApplicationController
before_action do
  require_login!
end

  def hello
    @users = User.all
    @matters = Matter.all
    @user_matters = UserMatter.all
    @roles = Role.all
    @documents = Document.all
  end
end
