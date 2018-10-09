class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  
  def index
    # @courses = Course.courses_for current_user
    @courses = Course.all

  end

  def new
    @course = Course.new
  end
  
  def create
    @course = Course.create(
      name: params[:course][:name],
      hours: params[:course][:hours],
    ) 
    redirect_to courses_path, notice: 'Your course was successfully created'
  end

  def show
  end

  def update
    if @course.update(course_params)
      redirect_to courses_path, notice: 'Your course was successfully edited'
    else
      render :edit
    end
  end

  def edit
  end

  def destroy
    set_course.delete
    redirect_to courses_path, notice: 'Your course was successfully deleted'
  end
   
  private

  def course_params
    params.require(:course).permit(:course_id, :name, :hours)
  end

  def set_course
    @course = Course.find(params[:id])
  end
end
