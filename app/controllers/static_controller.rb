class StaticController < ApplicationController
  def homepage
    @users = User.all
    @user = current_user
    if admin_types.include?(current_user.type)
    end
  end
 
  def edit
    @user = current_user
    if admin_types.include?(current_user.type)
    end

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
  end

  def show
    @users = User.all
    @courses = Course.all
    @cohorts = Cohort.all
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to users_path, notice: 'Your user was successfully edited'
    else
      render :edit
    end
  end

  def destroy
    
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :education, :salary, :role, :course_id, :cohort_id)
  end

end