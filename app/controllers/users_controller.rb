class UsersController < ApplicationController
  before_action :authorize, except: [:new]
  def index
    @user = User.all

    respond_to do |format|
      format.html
      format.js { render 'main.js.erb' }
      format.json { render json: @users }
    end
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
    redirect_to admin_users_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = current_user
    user.update(
    first_name: params[:user][:first_name],
    last_name: params[:user][:last_name],
    age: params[:user][:age],
    education: params[:user][:education]
    )
    redirect_to user_path(user)
  end

  def destroy
    user = current_user
    user.destroy
    redirect_to '/users/sign_in'
  end

  def delete_user
    @user = User.find(params[:id])
    @user.destroy
   
  end

  def show
    @user = current_user
  end

end
