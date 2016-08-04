class UserMattersController < ApplicationController
  def new
    @user_matter = UserMatter.new
  end

  def create
    @user_matter = UserMatter.new(user_matter_params)
    if @user_matter.save
      redirect_to root_path, notice: "UserMatter Created"
    else
      render :new
    end
  end

  def update
  end

  def index
    @user_matters = UserMatter.all
  end

private
  def user_matter_params
<<<<<<< HEAD
    params.require(:user_matter).permit(:user_id, :matter_id, :role_id)

=======
    params.require(:user_matter).permit(:matter_id, :user_id)
>>>>>>> master
  end
end
