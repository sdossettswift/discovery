class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Welcome!"
    else
      render :new
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find_by id: params[:id]
  end

  def edit
     @user = User.find_by id: params[:id]
   end

   def update
     @user = User.find_by id: params[:id]
      @user.update!(user_params)
     if @user.save
       redirect_to user_path, notice: "Profile Updated!"
     else
       render :edit
     end
   end


  private

  def user_params
    params.require(:user).permit(:username, :email,:password, :password_confirmation,:role_ids, :password_digest, :role, :bar_card, :email, :first_name, :middle_name, :maiden_name, :last_name, :address1, :address2, :city, :state, :zip, :phone)
  end
end
