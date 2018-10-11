class ApplicationController < ActionController::Base
  include Pundit
  
  protect_from_forgery with: :exception
  helper_method :full_name, :current_user
  before_action :authenticate_user!

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def full_name
    fname = User.first_name.capitalize
    lname = User.last_name.capitalize
    full_name = "fname" + " " + "lname"
  end

  def admin_types
    ['AdminUser']
  end

  private
  
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action"
    redirect_to(root_path)
  end
    
end
