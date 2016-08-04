class MattersController < ApplicationController
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

  def update
  end

  private

  def matter_params
    params.require(:matter).permit(:user,:kind, :description, :year, :cause_number, :court, :judge, :opposing_party, :opposing_counsel, :status )
  end
end
