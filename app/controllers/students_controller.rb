class StudentsController < ApplicationController
  
  def index
    @users = User.all
    @cohorts = Cohort.all
  end

  def show
  end
  
end