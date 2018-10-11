class CohortsController < ApplicationController
  before_action :set_cohort, only: [:show, :edit, :update, :destroy]

  def index
    @cohorts = Cohort.all
    @user = current_user
  end

  def new
    @cohort = Cohort.new
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
  end
   
  def update

    if @cohort.update(cohort_params)
      redirect_to cohorts_path, notice: 'Your cohort was successfully edited'
    else
      render :edit
    end
  end
  
  def edit
  
  end

  def destroy
    @cohort.delete
    redirect_to cohorts_path, notice: 'Your cohort was successfully deleted'
  end

  private

  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :instructor)
  end

  def set_cohort
    @cohort = Cohort.find(params[:id])
  end
end