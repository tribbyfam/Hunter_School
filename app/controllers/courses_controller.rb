class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
    @user_id = session[:user_id]
  end
  
  def create
    @course = Course.create(
      name: params[:course][:name],
      user_id: session[:user_id])

    # @course = Course.create(params.require(:course).permit(:name))
    
    redirect_to course_path(@course)
  end

  def show
    @course = Course.find(params[:id])
  end

  def update
  end

  def edit
  end

end
