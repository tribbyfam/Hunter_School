class CohortsController < ApplicationController
  before_action :set_cohort, only: [:show, :edit, :update, :destroy]

  def index
    @cohorts = Cohort.all
    @user = current_user
    @users = User.all
    
     
  end

  def new
    @cohort = Cohort.new
    @courses = Course.all.map{ |c| [c.name, c.id] }
    @users = User.all.map{ |c| [c.first_name, c.id, c.role] }
  end

  def create
  
    @cohort = Cohort.create(cohort_params) 
    puts "checking for cohort"

    if @cohort
			redirect_to cohorts_path, notice: 'Your cohort was successfully created'
		else
			render :new
		end
    
  end

  def show
    @cohort = set_cohort
    @cohort_user=CohortUser.new
    @users = User.all
    @users = User.all.map{|user| [user.first_name, user.id]}
  end
   
  def update

    if @cohort.update(cohort_params)
      redirect_to cohorts_path, notice: 'Your cohort was successfully edited'
    else
      render :edit
    end
  end
  
  def edit
    @cohort = Cohort.find(params[:id])
    @courses = Course.all.map{ |c| [c.name, c.id] }
    @users = User.all.map{ |c| [c.first_name, c.id, c.role] }
    
  end

  def destroy
    set_cohort.delete

    respond_to do |format|
      format.html
      format.js { render json: @cohorts }
    end
  end
 

  private

  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :instructor,:course_id, :user_id)
  end

  def set_cohort
    @cohort = Cohort.find(params[:id])
  end
end