class StaticController < ApplicationController
  def homepage
    @users = User.all
  end
end