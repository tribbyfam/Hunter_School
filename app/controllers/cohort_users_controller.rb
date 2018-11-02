class CohortUsersController < ApplicationController
  def new
   
  end
  def create
    CohortUser.create(
      cohort_id: params[:cohort_user][:cohort_id],
      user_id: params[:cohort_user][:users_ids])
  end
end
