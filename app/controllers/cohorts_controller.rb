class CohortsController < ApplicationController
  # before_action :set_cohort, only: [:show, :edit, :update, :destroy]

  def index
    @cohorts = Cohort.all
  end

  def new
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.create(cohort_params) 
    redirect_to cohorts_path
  end

  def show
  end
   
  def update
  end

  def edit
  end

  def destroy
  end

  private

  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :instructor)
  end

  def set_cohort
    @cohort = Cohort.find(params[:id])
  end
end