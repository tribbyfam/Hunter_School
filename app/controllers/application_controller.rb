class ApplicationController < ActionController::Base
  helper_method :full_name
  before_action :authenticate_user!


  def full_name
    fname = User.first_name
    lname = User.last_name
    full_name = "fname" + " " + "lname"
  end

  def authorize
    if current_user.nil?
      redirect_to new_user_session_path
    end
  end
end
