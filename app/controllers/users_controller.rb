class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      redirect_to user_path(@user) #/users/:id #page refreshes 
    else 
      redirect_to new_user_path
    end 
    end

  def edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params)
      redirect_to path
    else
      render :edit
    end
  end

  def delete
  end

  def show
  end

  private 
  def user_params
    params.require(:user).permit(:name, :username)
  end 
end
