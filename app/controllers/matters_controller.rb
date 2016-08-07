class MattersController < ApplicationController
  before_action do
    require_login!
  end

  def new
    @matter = Matter.new
  end

  def create
    @matter = Matter.create(matter_params)
    if @matter.save
      # session[:user_id] = @user.id
      redirect_to root_path, notice: "Matter Created"
    else
      render :new
    end
  end

  def edit
     @matter = Matter.find(params[:id])
   end

def update
  @matter = Matter.find(params[:id])
  if @matter.update matter_params
  redirect_to matter_path(id: @matter.id)
    else
      render :edit
    end
end

  def index
    @matters = Matter.all
  end

  def show
    @matter = Matter.find(params[:id])
    @docs = @matter.docs.all

  end

  def timeline
    @matter = Matter.find(params[:id])
  end


  private

  def matter_params
    params.require(:matter).permit(:users,:kind, :description, :year, :cause_number, :court, :judge, :opposing_party, :opposing_counsel, :status, :user_ids => [] )
  end
end
