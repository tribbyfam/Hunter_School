class StaticController < ApplicationController
  def homepage
    @users = User.all
    @user = current_user
    if admin_types.include?(current_user.type)
    end
  end
 
end