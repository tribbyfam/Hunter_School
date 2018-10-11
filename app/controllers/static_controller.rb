class StaticController < ApplicationController
  def homepage
    @users = User.all
    if admin_types.include?(current_user.type)
    end
  end
end