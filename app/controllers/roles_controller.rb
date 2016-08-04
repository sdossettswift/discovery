class Roles < ApplicationController
  def new
    @role = Role.new
  end

  def create
    @role = Role.create(role_params)
    if @role.save

    else
      render :new
    end
  end

  def index
    @roles = Role.all
  end

  def show
    @role = Role.find_by id: params[:id]
  end

  private

  def user_params
    params.require(:role).permit(:name)
  end
end
