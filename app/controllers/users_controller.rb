class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.create(
      username: params[:user][:username],
      password: params[:user][:password]
    )
    session[:user_id] = user.id
    redirect_to users_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(
    first_name: params[:user][:first_name],
    last_name: params[:user][:last_name],
    age: params[:user][:age],
    education: params[:user][:education]
    )
    redirect_to user_path(user)
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path
  end

  def show
    @user = User.find(params[:id])
  end

end
