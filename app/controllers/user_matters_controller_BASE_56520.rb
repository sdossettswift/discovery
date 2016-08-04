class UserMattersController < ApplicationController
  def new
    @user_matter = UserMatter.new
  end

  def create
    @user_matter = UserMatter.create(user_matter_params)
    if @user_matter.save
      redirect_to root_path, notice: "UserMatter Created"
    else
      render :new
    end
  end

  def update
  end

private
  def user_matter_params
    params.require(:user_matter).permit(:user_id, :matter_id, :role)

  end
end
