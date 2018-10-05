class CoursesController < ApplicationController
  before_action :set_course, only: [:show]
  
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
    @user_id = current_user.id
  end
  
  def create
    @course = Course.create(
      name: params[:course][:name],
      hours: params[:course][:hours],
      user_id: current_user.id
    ) 
    redirect_to course_path(@course)
  end

  def show
  end

  def update
  end

  def edit
  end
   
  private

  def course_params
    params.require(:course).permit(:course_id, :name, :hours)
  end

  def set_course
    @course = Course.find(params[:id])
  end
end
