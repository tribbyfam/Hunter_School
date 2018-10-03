class CoursesController < ApplicationController
  before_action :set_course, only: [:show]
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
    @user_id = session[:user_id]
  end
  
  def create
    @course = Course.new(course_params)

    # @course = Course.create(params.require(:course).permit(:name))
    if @course.save
      redirect_to course_path(@course), notice: 'Your course was created'
    else
      render :new
    end
  end

  def show
  end

  def update
  end

  def edit
  end
   
  private

  def course_params
    params.require(:course).permit(:name, :hours)
  end

  def set_course
    @course = Course.find(params[:id])
  end
end
